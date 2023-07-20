import 'package:flutter/material.dart';
import 'package:temopedia/core/widgets/app_text.dart';
import 'package:temopedia/core/widgets/separated_column.dart';
import 'package:temopedia/design_system/border_radius.dart';
import 'package:temopedia/design_system/colors.dart';

class DetailsContainer extends StatelessWidget {
  const DetailsContainer({
    super.key,
    this.title,
    required this.child,
  });

  final String? title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final localTitle = title;
    final colorTheme = context.appColors;
    final borderRadius = context.appBorderRadius;

    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: borderRadius.dialog,
        color: colorTheme.dialog,
      ),
      child: SeparatedColumn(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        separator: const SizedBox(height: 12),
        children: [
          if (localTitle != null) AppText(localTitle.toUpperCase()),
          child,
        ],
      ),
    );
  }
}
