import 'package:education_app/component/question_summary.dart';
import 'package:education_app/question_data/listofquestions.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    required this.onPressed,
    required this.usersAnswer,
  });
  final void Function()? onPressed;
  final List<String> usersAnswer;

  List<Map<String, Object>> getResultSummary() {
    List<Map<String, Object>> summary = [];
    for (var i = 0; i < usersAnswer.length; i++) {
      summary.add({
        "question_index": i,
        "question": listOfQuestions[i].questionText,
        "answer": listOfQuestions[i].answers[0],
        "selected_answer": usersAnswer[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numberofquestions = listOfQuestions.length;
    final correctAnswers = getResultSummary().where((data) {
      return data["selected_answer"] == data["answer"];
    }).length;
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Quiz Complete! WellDone.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 12, 10, 28),
              ),
            ),
            SizedBox(height: 5),
            Text(
              'You answered $correctAnswers correctly out of $numberofquestions questions',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 30),
            QuestionSummary(resultSummary: getResultSummary()),
            SizedBox(height: 30),
            OutlinedButton(onPressed: onPressed, child: Text('Restart Quiz')),
          ],
        ),
      ),
    );
  }
}
