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
        _SliverHeader(id: id),
      ],
    );
  }
}

class _SliverHeader extends ConsumerWidget with AppBarSize {
  const _SliverHeader({
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
    final lumaIcon = temtem?.lumaIcon;
    final lumaIconUrl =
        lumaIcon != null ? ref.watch(imageUrlProvider(lumaIcon)) : null;

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SeparatedRow(
          separator: const SizedBox(width: 12),
          children: [
            if (iconUrl != null)
              TemtemAvatar(
                url: iconUrl,
                lumaUrl: lumaIconUrl,
                size: 120,
              ),
            Expanded(child: _HeaderContent(id: id)),
          ],
        ),
      ),
    );
  }
}

class _HeaderContent extends ConsumerWidget {
  const _HeaderContent({
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
        Flexible(
          child: AppText(
            localName,
            color: Palette.whiteFont,
            style: const TextStyle(fontSize: 24),
            maxLines: 2,
          ),
        ),
        AppText(
          '#$number',
          color: Palette.greyFont,
          style: const TextStyle(fontSize: 20),
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
        Image.asset(
          type.assetPath,
          height: 32,
        ),
        AppText(
          type.translation(context.strings),
          color: Palette.whiteFont,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
