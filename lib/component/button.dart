import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.onPressed, required this.buttonText});
  final void Function() onPressed;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton(onPressed: onPressed, child: Text(buttonText)),
    );
  }
}
