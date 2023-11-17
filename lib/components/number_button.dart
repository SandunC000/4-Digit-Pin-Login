import 'package:flutter/material.dart';

class NumberButton extends StatelessWidget {
  final TextEditingController controller;
  final int maxLength;

  final String number;
  final String letters;

  const NumberButton(
      {super.key,
      required this.number,
      required this.letters,
      required this.controller,
      required this.maxLength});

  onNumberPressed() {
    if (maxLength != controller.text.length) {
      controller.text += number;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onNumberPressed,
      child: Container(
        padding: const EdgeInsets.only(top: 25, right: 10, left: 10),
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Column(
          children: [
            Text(
              number,
              style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            Text(
              letters,
              style: const TextStyle(fontSize: 12, color: Colors.white60),
            ),
          ],
        ),
      ),
    );
  }
}
