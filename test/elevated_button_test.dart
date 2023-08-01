import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_catalog_flutter/presentation/widgets/Buttons/ElevatedBtn/elevated_button.dart';

void main() {
  testWidgets('CsElevatedButton has a title and message',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
        home: CsElevatedButton(
      btnTitle: "title",
    )));

    // Create finders
    final titleFinder = find.text('title');

    // Use the `findsOneWidget` matcher provided by flutter_test to verify that the
    // Text widgets appear exactly once in the widget tree.
    expect(titleFinder, findsOneWidget);
  });
}
