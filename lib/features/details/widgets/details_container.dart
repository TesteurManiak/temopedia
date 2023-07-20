import 'package:flutter/material.dart';
import 'package:temopedia/core/widgets/app_text.dart';
import 'package:temopedia/core/widgets/separated_column.dart';
import 'package:temopedia/design_system/extensions/build_context.dart';

class DetailsContainer extends StatelessWidget {
  const DetailsContainer({
    super.key,
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.colorTheme;

    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: colorTheme.dialog,
      ),
      child: SeparatedColumn(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        separator: const SizedBox(height: 12),
        children: [
          AppText(title.toUpperCase()),
          child,
        ],
      ),
    );
  }
}
