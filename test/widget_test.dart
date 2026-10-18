import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quiz_app/main.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/answer_button.dart';

void main() {
  test('Shuffle zachová pôvodné dáta', () {
    for (final q in questions) {
      final original = List<String>.of(q.answers);
      expect(q.getShuffledAnswers(), unorderedEquals(original));
      expect(q.answers, original);
    }
  });
  testWidgets('Skóre, prechod obrazovkami, scroll a reštart', (tester) async {
    tester.view.physicalSize = const Size(320, 568);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(const QuizApp());
    await tester.tap(find.text('Start Quiz'));
    await tester.pumpAndSettle();
    for (var round = 0; round < 2; round++) {
      for (var i = 0; i < questions.length; i++) {
        expect(find.text('Otázka ${i + 1} z 6'), findsOneWidget);
        final answer = questions[i].answers[round == 0 && i.isOdd ? 1 : 0];
        final button = find.widgetWithText(AnswerButton, answer);
        await tester.ensureVisible(button);
        await tester.tap(button);
        await tester.pumpAndSettle();
        expect(tester.takeException(), isNull);
      }
      expect(find.text('Správne odpovede: ${round == 0 ? 3 : 6} z 6'), findsOneWidget);
      await tester.drag(find.byType(SingleChildScrollView), const Offset(0, -1000));
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
      if (round == 0) {
        await tester.tap(find.text('Restart Quiz'));
        await tester.pumpAndSettle();
      }
    }
  });
}
