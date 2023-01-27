import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:xam/presentation/ui/new_diary_page.dart';

void main() {

  Widget buildTestableWidget(Widget widget) {
    return MediaQuery(data: const MediaQueryData(), child: MaterialApp(home: widget));
  }


    testWidgets('Check if _commentController isNotEmpty',
        (WidgetTester test) async {
      final comment = find.byKey(const ValueKey('commentField'));

      await test.pumpWidget(buildTestableWidget(const NewDiaryPage()));
      await test.enterText(comment, 'Enter comments here');

      await test.pump();

      expect(find.text('Enter comments here'), findsOneWidget);
    });


  tearDownAll(() {
    debugPrint('DONE');
  });
}
