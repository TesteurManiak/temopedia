import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../../../../bloc/search/search_cubit.dart';
import '../../../../theme/theme.dart';
import 'search_bar_modal.dart';
import 'select_type_modal.dart';

class FilterDialButton extends StatefulWidget {
  const FilterDialButton({super.key});

  @override
  State<FilterDialButton> createState() => _FilterDialButtonState();
}

class _FilterDialButtonState extends State<FilterDialButton> {
  Future<void> _showSearchModal(BuildContext context) async {
    final searchText = await showModalBottomSheet<String>(
      context: context,
      builder: (_) => const SearchBarModal(),
    );
    if (mounted && searchText != null) {
      context.read<SearchCubit>().setSearchText(searchText);
    }
  }

  void _showTypeModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) => const SelectTypeModal(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final appColors = AppTheme.of(context).colors;
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme:
          IconThemeData(size: 22, color: appColors.speedDialIcon),
      backgroundColor: appColors.speedDialBackground,
      elevation: 8,
      children: <SpeedDialChild>[
        SpeedDialChild(
          label: "Search name",
          child: const Icon(Icons.search),
          onTap: () => _showSearchModal(context),
        ),
        SpeedDialChild(
          label: "Type",
          child: const Icon(Icons.sort),
          onTap: () => _showTypeModal(context),
        ),
        SpeedDialChild(
          label: "Favorite",
          child: const Icon(Icons.favorite),
          onTap: () {},
        ),
        SpeedDialChild(
          label: "Clear Filter",
          child: const Icon(Icons.clear),
          onTap: () {},
        ),
      ],
    );
  }
}
