import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/extensions/build_context.dart';
import '../../../core/mixins/app_bar_size.dart';
import '../../../core/models/type.dart';
import '../../../core/network/http_clients.dart';
import '../../../core/widgets/app_text.dart';
import '../../../core/widgets/separated_column.dart';
import '../../../core/widgets/separated_row.dart';
import '../../../core/widgets/state_notifier_loader.dart';
import '../../../design_system/palette.dart';
import '../controllers/details_controller.dart';
import '../widgets/temtem_avatar.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({
    super.key,
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    return StateNotifierLoader(
      provider: detailsControllerProvider(id),
      child: Scaffold(
        appBar: AppBar(),
        body: _Body(id: id),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        _SliverAppBar(id: id),
      ],
    );
  }
}

class _SliverAppBar extends ConsumerWidget with AppBarSize {
  const _SliverAppBar({
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final temtem = ref.watch(
      detailsControllerProvider(id).select((s) => s.temtemOrNull),
    );
    final icon = temtem?.icon;
    final iconUrl = icon != null ? ref.watch(imageUrlProvider(icon)) : null;

    return SliverAppBar(
      title: SeparatedRow(
        separator: const SizedBox(width: 12),
        children: [
          if (iconUrl != null)
            TemtemAvatar(
              url: iconUrl,
              size: 120,
            ),
          _HeaderData(id: id),
        ],
      ),
      toolbarHeight: 120,
      automaticallyImplyLeading: false,
      centerTitle: false,
      pinned: true,
      floating: true,
    );
  }
}

class _HeaderData extends ConsumerWidget {
  const _HeaderData({
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final types = ref.watch(
      detailsControllerProvider(id).select((s) => s.temtemOrNull?.types),
    );
    final name = ref.watch(
      detailsControllerProvider(id).select((s) => s.temtemOrNull?.name),
    );
    final number = ref.watch(
      detailsControllerProvider(id).select((s) => s.temtemOrNull?.number),
    );

    return SeparatedColumn(
      separator: const SizedBox(height: 12),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (name != null && number != null)
          _NameAndNumber(name: name, number: number),
        if (types != null) _Types(types: types),
      ],
    );
  }
}

class _NameAndNumber extends StatelessWidget {
  const _NameAndNumber({
    required this.name,
    required this.number,
  });

  final String name;
  final int number;

  @override
  Widget build(BuildContext context) {
    final localName = name;

    return SeparatedRow(
      separator: const SizedBox(width: 8),
      children: [
        AppText(
          localName,
          type: AppTextType.generic,
          color: Palette.whiteFont,
        ),
        AppText(
          '#$number',
          type: AppTextType.generic,
          color: Palette.greyFont,
        ),
      ],
    );
  }
}

class _Types extends StatelessWidget {
  const _Types({
    required this.types,
  });

  final List<TemType> types;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: types.map(_TypeCell.new).toList(),
    );
  }
}

class _TypeCell extends StatelessWidget {
  const _TypeCell(this.type);

  final TemType type;

  @override
  Widget build(BuildContext context) {
    return SeparatedRow(
      separator: const SizedBox(width: 4),
      children: [
        Image.asset(type.assetPath, height: 24),
        AppText(
          type.translation(context.strings),
          type: AppTextType.generic,
          color: Palette.whiteFont,
        ),
      ],
    );
  }
}
