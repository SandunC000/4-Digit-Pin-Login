import 'package:flutter/material.dart';
import 'package:pin_login/components/bg_img.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BgImg(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'createPin');
              },
              icon: const Icon(Icons.arrow_back),
            color: Colors.white,
          ),
        ),
        body: const SafeArea(
          child: Center(
              child: Text(
            "HomePage",
            style: TextStyle(color: Colors.white, fontSize: 30),
          )),
        ),
      ),
    );
  }
}
