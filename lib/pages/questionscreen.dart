import 'package:education_app/component/button.dart';
import 'package:education_app/question_data/listofquestions.dart';
import 'package:flutter/material.dart';

class Questionscreen extends StatefulWidget {
  const Questionscreen({super.key, required this.saveAnswers});
  final void Function(String myAnswers) saveAnswers;

  @override
  State<Questionscreen> createState() => _QuestionscreenState();
}

class _QuestionscreenState extends State<Questionscreen> {
  var questionsIndex = 0;

  void changeQuestions(String answer) {
    widget.saveAnswers(answer);
    setState(() {
      questionsIndex = questionsIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final questions = listOfQuestions[questionsIndex];
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              questions.questionText,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 12, 10, 28),
              ),
            ),
            SizedBox(height: 26),
            ...questions.shuffledanswers().map((answer) {
              return Button(
                onPressed: () {
                  changeQuestions(answer);
                },
                buttonText: answer,
              );
            }),
          ],
        ),
      ),
    );
  }
}
