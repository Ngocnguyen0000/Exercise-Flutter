import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_bai1/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp()); // Đã loại bỏ từ khóa const

    // Verify that our counter starts at 0.
    expect(find.text('Count: 0'), findsOneWidget);
    expect(find.text('Count: 1'), findsNothing);

    // Tap the button labeled 'Increment' and trigger a frame.
    await tester.tap(find.text('Increment'));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('Count: 0'), findsNothing);
    expect(find.text('Count: 1'), findsOneWidget);
  });
}
