import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key, required this.ontap});
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Image.asset('lib/assets/images/jsp.png', width: 300),
            SizedBox(height: 5),
            Text(
              'Test Your Knowledge',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 12, 10, 28),
              ),
            ),
            SizedBox(height: 5),
            Text(
              textAlign: TextAlign.center,
              'Discover thousands of fun questions across science, history, tech, and culture.',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 70),
            ElevatedButton.icon(
              onPressed: ontap,
              icon: Icon(Icons.arrow_right_sharp),
              label: Text('Start Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
