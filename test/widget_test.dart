import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:finance_app/main.dart';

void main() {
  testWidgets('FinanceApp smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const ProviderScope(
        child: FinanceApp(),
      ),
    );

    // Wait for animations to finish to avoid pending timers error
    await tester.pumpAndSettle();

    // Verify that the login screen is loaded and elements are present.
    expect(find.text('Bem-vindo de volta!'), findsOneWidget);
    expect(find.byType(ElevatedButton), findsOneWidget);
  });
}
