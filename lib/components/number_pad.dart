import 'package:flutter/material.dart';
import 'package:pin_login/pages/confirm_pin_page.dart';
import 'package:pin_login/pages/home_page.dart';

import 'action_button.dart';
import 'number_button.dart';

class NumberPad extends StatefulWidget {
  final int page;
  final TextEditingController numberController;
  final String confirmNumberController;

  const NumberPad(
      {super.key,
      required this.numberController,
      required this.page,
      required this.confirmNumberController});

  @override
  State<NumberPad> createState() => _NumberPadState();
}

class _NumberPadState extends State<NumberPad> {
  int maxLength = 4;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 7),
              child: NumberButton(
                number: '1',
                letters: '',
                controller: widget.numberController,
                maxLength: maxLength,
              ),
            ),
            NumberButton(
              number: '2',
              letters: 'A B C',
              controller: widget.numberController,
              maxLength: maxLength,
            ),
            NumberButton(
              number: '3',
              letters: 'D E F',
              controller: widget.numberController,
              maxLength: maxLength,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NumberButton(
              number: '4',
              letters: 'G H I',
              controller: widget.numberController,
              maxLength: maxLength,
            ),
            NumberButton(
              number: '5',
              letters: 'J K L',
              controller: widget.numberController,
              maxLength: maxLength,
            ),
            NumberButton(
              number: '6',
              letters: 'M N O',
              controller: widget.numberController,
              maxLength: maxLength,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NumberButton(
              number: '7',
              letters: 'P Q R S',
              controller: widget.numberController,
              maxLength: maxLength,
            ),
            NumberButton(
              number: '8',
              letters: 'T U V',
              controller: widget.numberController,
              maxLength: maxLength,
            ),
            NumberButton(
              number: '9',
              letters: 'W X Y Z',
              controller: widget.numberController,
              maxLength: maxLength,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: ActionButton(
                label: 'CLEAR',
                onTap: () {
                  if (widget.numberController.text.isNotEmpty) {
                    widget.numberController.text = widget.numberController.text
                        .substring(0, widget.numberController.text.length - 1);
                  }
                  print(widget.numberController.text);
                },
              ),
            ),
            NumberButton(
              number: '0',
              letters: '',
              controller: widget.numberController,
              maxLength: maxLength,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: ActionButton(
                label: 'ENTER',
                onTap: () {
                  if (widget.page == 1 &&
                      widget.numberController.text.length == 4) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ConfirmPinPage(
                                pin: widget.numberController.text)));
                  } else if (widget.page == 2 &&
                      widget.numberController.text.length == 4 &&
                      widget.numberController.text ==
                          widget.confirmNumberController) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  }
                },
              ),
            ),
          ],
        )
      ],
    );
  }
}
