import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String label;
  final Function() onTap;

  const ActionButton({
    super.key,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Color? fontColor = Colors.white60;
    if (label == 'ENTER') {
      fontColor = Colors.green[200];
    }

    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(top: 25, right: 10, left: 10),
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Text(
          label,
          style: TextStyle(
              fontSize: 13, fontWeight: FontWeight.w400, color: fontColor),
        ),
      ),
    );
  }
}
