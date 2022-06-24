import 'package:flutter/material.dart';

import '../../controllers/signup_controller.dart';

class SignUpScreen extends StatefulWidget {
  final SignUpController signUpController;

  const SignUpScreen({
    Key? key,
    required this.signUpController,
  }) : super(key: key);

  @override
  State<SignUpScreen> createState() => SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.redAccent,
      ),
    );
  }
}
