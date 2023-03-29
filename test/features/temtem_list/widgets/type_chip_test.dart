import 'package:alchemist/alchemist.dart';
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
        return TestableWidget(
          child: GoldenTestGroup(
            columns: 1,
            children: [
              for (final type in TemType.values)
                GoldenTestScenario(
                  name: type.name,
                  child: TypeChip(type: type),
                ),
            ],
          ),
        );
      },
    );
  });
}
