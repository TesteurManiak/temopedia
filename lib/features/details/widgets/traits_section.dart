import 'package:flutter/material.dart';
import 'package:temopedia/core/extensions/string.dart';
import 'package:temopedia/core/widgets/separated_column.dart';
import 'package:temopedia/features/details/widgets/details_container.dart';
import 'package:temopedia/features/details/widgets/trait_dialog.dart';

class TraitsSection extends StatelessWidget {
  const TraitsSection({
    super.key,
    required this.traits,
  });

  final List<String> traits;

  @override
  Widget build(BuildContext context) {
    return DetailsContainer(
      title: 'Traits'.hardcoded,
      child: SeparatedColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
        separator: const Divider(),
        children: [
          for (final trait in traits)
            ListTile(
              title: Text(trait),
              trailing: const Icon(Icons.chevron_right),
              contentPadding: EdgeInsets.zero,
              onTap: () => TraitDialog(name: trait).show(context),
            ),
        ],
      ),
    );
  }
}
