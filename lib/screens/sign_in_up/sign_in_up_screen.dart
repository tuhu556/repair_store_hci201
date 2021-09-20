import 'package:flutter/material.dart';
import 'package:repair_app/screens/sign_in_up/components/body.dart';

class SignInUpScreen extends StatelessWidget {
  static String routeName = "/signInUp";
  const SignInUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
