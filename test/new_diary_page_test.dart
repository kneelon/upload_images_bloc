import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:xam/presentation/ui/new_diary_page.dart';

void main() {
  group('Test Widgets', () {
    testWidgets('Check if _commentController isNotEmpty',
        (WidgetTester test) async {
      final comment = find.byKey(const ValueKey('commentField'));

      await test.pumpWidget(const MaterialApp(home: NewDiaryPage()));
      await test.enterText(comment, 'Enter comments here');

      await test.pump();

      expect(find.text('Enter comments here'), findsOneWidget);
    });

    testWidgets('Check if _commentController isNotEmpty',
            (WidgetTester test) async {
          final comment = find.byKey(const ValueKey('tagsField'));

          await test.pumpWidget(const MaterialApp(home: NewDiaryPage()));
          await test.enterText(comment, 'Enter comments here');

          await test.pump();

          expect(find.text('Enter comments here'), findsOneWidget);
        });


    testWidgets('Check Next Button', (WidgetTester test) async {
      final nextButton = find.byKey(const ValueKey('nextButton'));

      await test.pumpWidget(const MaterialApp(home: NewDiaryPage()));
      await test.tap(warnIfMissed: false, nextButton);
      await test.pump();

    });
  });

  tearDownAll(() {
    debugPrint('DONE');
  });
}
