import 'package:education_app/pages/onboardingscreen.dart';
import 'package:education_app/pages/questionscreen.dart';
import 'package:education_app/pages/result_page.dart';
import 'package:education_app/question_data/listofquestions.dart';
import 'package:flutter/material.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() {
    return _WidgetTree();
  }
}

class _WidgetTree extends State<WidgetTree> {
  Widget? mainScreen;
  List<String> selectedAnswer = [];

  @override
  void initState() {
    mainScreen = OnboardingScreen(ontap: gotonextscreen);
    super.initState();
  }

  void addSelectedAnswers(String selectedanswers) {
    selectedAnswer.add(selectedanswers);

    if (selectedAnswer.length == listOfQuestions.length) {
      setState(() {
        mainScreen = ResultPage(
          onPressed: restartQuiz,
          usersAnswer: selectedAnswer,
        );
      });
    }
  }

  void restartQuiz() {
    selectedAnswer = [];
    setState(() {
      mainScreen = Questionscreen(saveAnswers: addSelectedAnswers);
    });
  }

  void gotonextscreen() {
    setState(() {
      mainScreen = Questionscreen(saveAnswers: addSelectedAnswers);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 254, 255, 255),
                const Color.fromARGB(255, 202, 232, 255),
              ],
              begin: AlignmentGeometry.topLeft,
              end: AlignmentGeometry.bottomRight,
            ),
          ),
          child: mainScreen,
        ),
      ),
    );
  }
}
