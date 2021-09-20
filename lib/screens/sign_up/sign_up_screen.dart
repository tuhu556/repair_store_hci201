import 'package:flutter/material.dart';
import 'package:repair_app/contanst/color.dart';
import 'package:repair_app/screens/sign_up/components/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/signup";
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        backgroundColor: AppColors.colorFF8C1A,
      ),
      body: Body(),
    );
  }
}
