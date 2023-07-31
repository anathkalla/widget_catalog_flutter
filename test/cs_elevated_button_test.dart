import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_catalog_flutter/widgets/Buttons/elevated_button.dart';

void main() {
  // Create a test widget.
  const Widget testWidget = CsElevatedButton();

  // Create a test suite.
  group('ElevatedButton', () {
    // Test that the widget is rendered correctly.
    testWidgets('renders correctly', (tester) async {
      // Build the widget in the test environment.
      await tester.pumpWidget(testWidget);

      // Verify that the widget is rendered correctly.
      expect(find.byType(ElevatedButton), findsOneWidget);
      expect(find.text('Click Me'), findsOneWidget);
    });

    // Test that the button can be pressed.
    testWidgets('can be pressed', (tester) async {
      // Build the widget in the test environment.
      await tester.pumpWidget(testWidget);

      // Tap on the button.
      await tester.tap(find.byType(ElevatedButton));

      // Verify that the button was pressed.
      expect(find.byType(ElevatedButton), findsNothing);
    });
  });
}
