import 'package:control_button/forgotPassword.dart';
import 'package:control_button/homePage.dart';
import 'package:control_button/loginScreen.dart';
import 'package:control_button/sign_up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ForgotPassword(),
    );
  }
}
