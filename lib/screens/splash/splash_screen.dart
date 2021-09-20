import 'package:flutter/material.dart';
import 'package:repair_app/config/constants.dart';
import 'package:repair_app/screens/splash/components/body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorFF8C1A,
      body: Body(),
    );
  }
}
