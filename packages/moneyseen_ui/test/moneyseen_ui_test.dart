import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:moneyseen_ui/moneyseen_ui.dart';

void main() {
  testWidgets('status card renders its content', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: MoneySeenTheme.light(),
        home: const Scaffold(
          body: MoneySeenStatusCard(
            icon: Icons.lock_outline,
            title: '本地优先',
            description: '账本保存在设备中',
          ),
        ),
      ),
    );

    expect(find.text('本地优先'), findsOneWidget);
    expect(find.text('账本保存在设备中'), findsOneWidget);
  });
}
