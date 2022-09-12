import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:temopedia/home/home_page.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

List<TemTemApiTem> _emptyList = [];
MaterialApp testApp = MaterialApp(home: HomePage(_emptyList));

void main() {
  testWidgets('HomePage render test', (WidgetTester tester) async {
    await tester.pumpWidget(testApp);
  });
}
