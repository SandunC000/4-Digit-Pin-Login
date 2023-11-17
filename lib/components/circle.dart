import 'package:flutter/material.dart';

class CirclesPage extends StatefulWidget {
  // final String pin;
  final TextEditingController pinController;

  const CirclesPage({
    super.key,
    required this.pinController,
  });

  @override
  State<CirclesPage> createState() => _CirclesPageState();
}

class _CirclesPageState extends State<CirclesPage> {
  String pin = '';

  @override
  void initState() {
    widget.pinController.addListener(() {
      setState(() {
        pin = widget.pinController.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        4,
        (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: 12,
          width: 12,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.white),
            shape: BoxShape.circle,
            color: index < pin.length ? Colors.white : Colors.transparent,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    widget.pinController.dispose();
    super.dispose();
  }
}
