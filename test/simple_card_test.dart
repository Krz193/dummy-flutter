import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_test/widgets/simple_card.dart';

void main() {
  testWidgets('SimpleCard displays title and value', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: SimpleCard(
          title: 'Test Title',
          value: '123',
        ),
      ),
    );

    expect(find.text('Test Title'), findsOneWidget);
    expect(find.text('123'), findsOneWidget);
  });
}