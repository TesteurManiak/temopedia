import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:temopedia/core/models/type.dart';
import 'package:temopedia/features/temtem_list/widgets/type_chip.dart';

import '../../../utils/testable_widgets.dart';

void main() {
  group('TypeChip', () {
    goldenTest(
      'TypeChip render dark',
      fileName: 'type_chip_dark',
      builder: () {
        return const GoldenTestGroup(
          columns: 2,
          children: [
            _TypeChipGoldenGroup(locale: Locale('en')),
            _TypeChipGoldenGroup(locale: Locale('fr')),
          ],
        );
      },
    );
  });
}

class _TypeChipGoldenGroup extends StatelessWidget {
  const _TypeChipGoldenGroup({
    required this.locale,
  });

  final Locale locale;

  @override
  Widget build(BuildContext context) {
    return TestableWidget(
      locale: locale,
      child: GoldenTestGroup(
        columns: 1,
        children: [
          for (final type in TemType.values)
            GoldenTestScenario(
              name: '${type.name} ${locale.languageCode}',
              child: TypeChip(type: type),
            ),
        ],
      ),
    );
  }
}
