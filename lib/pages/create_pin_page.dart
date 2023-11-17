import 'package:flutter/material.dart';
import 'package:pin_login/components/bg_img.dart';
import 'package:pin_login/components/circle.dart';
import 'package:pin_login/components/number_pad.dart';
import 'package:pin_login/pages/confirm_pin_page.dart';

class CreatePinPage extends StatefulWidget {
  const CreatePinPage({super.key});

  @override
  State<CreatePinPage> createState() => _CreatePinPageState();
}

class _CreatePinPageState extends State<CreatePinPage> {
  TextEditingController numberController = TextEditingController();

  onTap() {
    numberController.text.length == 4
        ? () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    ConfirmPinPage(pin: numberController.text)))
        : null;
  }

  @override
  Widget build(BuildContext context) {
    return BgImg(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                const Text('CREATE 4-DIGIT LOGIN PIN',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.white60,
                    )),
                CirclesPage(pinController: numberController),
                NumberPad(
                  numberController: numberController,
                  page: 1,
                  confirmNumberController: numberController.text,
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                  ),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: Colors.transparent, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
