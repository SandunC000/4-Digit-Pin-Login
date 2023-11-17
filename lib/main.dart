import 'package:flutter/material.dart';
import 'package:pin_login/pages/create_pin_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'createPin' : (context) => const CreatePinPage(),
      },
      debugShowCheckedModeBanner: false,
      home: CreatePinPage(),
    );
  }
}
