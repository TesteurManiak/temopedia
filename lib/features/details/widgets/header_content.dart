import 'package:flutter/material.dart';
import 'package:temopedia/core/extensions/build_context.dart';
import 'package:temopedia/core/models/type.dart';
import 'package:temopedia/core/widgets/app_text.dart';
import 'package:temopedia/core/widgets/separated_column.dart';
import 'package:temopedia/core/widgets/separated_row.dart';
import 'package:temopedia/design_system/palette.dart';
import 'package:temopedia/features/details/widgets/temtem_avatar.dart';

class HeaderContent extends StatelessWidget {
  const HeaderContent({
    super.key,
    required this.name,
    required this.number,
    required this.iconUrl,
    required this.lumaIconUrl,
    required this.types,
  });

  final String? name;
  final int? number;
  final String? iconUrl;
  final String? lumaIconUrl;
  final List<TemType>? types;

  @override
  Widget build(BuildContext context) {
    final localIconUrl = iconUrl;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SeparatedRow(
        separator: const SizedBox(width: 12),
        children: [
          if (localIconUrl != null)
            TemtemAvatar(
              url: localIconUrl,
              lumaUrl: lumaIconUrl,
              size: 120,
            ),
          Expanded(
            child: _HeaderContent(name: name, number: number, types: types),
          ),
        ],
      ),
    );
  }
}

class _HeaderContent extends StatelessWidget {
  const _HeaderContent({
    required this.name,
    required this.number,
    required this.types,
  });

  final String? name;
  final int? number;
  final List<TemType>? types;

  @override
  Widget build(BuildContext context) {
    final localName = name;
    final localNumber = number;
    final localTypes = types;

    return SeparatedColumn(
      separator: const SizedBox(height: 12),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (localName != null && localNumber != null)
          _NameAndNumber(name: localName, number: localNumber),
        if (localTypes != null) _Types(types: localTypes),
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
    return SeparatedRow(
      separator: const SizedBox(width: 8),
      children: [
        Flexible(
          child: AppText(
            name,
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
