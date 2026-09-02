import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 20,
        children: [
          Image.asset('lib/assets/images/jsp.png', width: 300),
          Text('data'),
        ],
      ),
    );
  }
}
