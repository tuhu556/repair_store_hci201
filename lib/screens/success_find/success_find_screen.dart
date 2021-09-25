import 'package:flutter/material.dart';
import 'package:repair_app/contanst/color.dart';
import 'package:repair_app/screens/success_find/components/body.dart';

class SuccessFindScreen extends StatelessWidget {
  static String routeName = "/successFindScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorFFAE64,
      body: Body(),
    );
  }
}
