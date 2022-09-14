import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

import '../../styles/text_styles.dart';
import '../../styles/theme.dart';
import '../../utils/globals.dart' as globals;

class TypeFilter {
  final TemTemApiType type;
  bool isSelected;

  TypeFilter(this.type, {this.isSelected = false});
}

class TypeFilterWidget extends StatefulWidget {
  final TypeFilter filter;

  const TypeFilterWidget({super.key, required this.filter});

  @override
  State<StatefulWidget> createState() => _TypeFilterWidgetState();
}

class _TypeFilterWidgetState extends State<TypeFilterWidget> {
  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      backgroundColor: MyColors.lightBackground,
      padding: const EdgeInsets.all(10),
      label: Text(widget.filter.type.name),
      labelStyle: TextStyles.lightText,
      avatar: CachedNetworkImage(
        imageUrl: "https://temtem-api.mael.tech${widget.filter.type.icon}",
        placeholder: (context, url) => Image.asset("assets/unknown.png"),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
      selected: widget.filter.isSelected,
      onSelected: (val) => val,
    );
  }
}

class SelectTypeModal extends StatelessWidget {
  const SelectTypeModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("Choose types you want to filter", style: TextStyles.lightText),
          const SizedBox(height: 8),
          StreamBuilder<List<String>>(
            builder: (context, snapshot) {
              final data = snapshot.data;
              if (!snapshot.hasData || data == null) {
                return const SizedBox.shrink();
              }
              return Wrap(
                alignment: WrapAlignment.center,
                spacing: 8,
                children: List<Widget>.generate(
                  globals.types.length,
                  (int index) => TypeFilterWidget(
                    filter: TypeFilter(
                      globals.types[index],
                      isSelected: data.contains(globals.types[index].name),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
