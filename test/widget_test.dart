import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:temopedia/HomePage/HomePage.dart';
import 'package:temopedia/Models/Temtem.dart';

List<Temtem> _emptyList = [];
MaterialApp testApp = MaterialApp(home: HomePage(_emptyList, null));

void main() {
  testWidgets('HomePage render test', (WidgetTester tester) async {
    await tester.pumpWidget(testApp);
  });
}
