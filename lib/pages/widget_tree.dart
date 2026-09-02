import 'package:education_app/pages/onboardingscreen.dart';
import 'package:flutter/material.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() {
    return _WidgetTree();
  }
}

class _WidgetTree extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 0, 36, 66),
                const Color.fromARGB(255, 5, 42, 71),
              ],
              begin: AlignmentGeometry.topLeft,
              end: AlignmentGeometry.bottomRight,
            ),
          ),
          child: OnboardingScreen(),
        ),
      ),
    );
  }
}
