import 'package:flutter/material.dart';
import 'package:repair_app/contanst/color.dart';
import 'package:repair_app/screens/add_motobike/components/body.dart';

class AddMotoScreen extends StatelessWidget {
  static String routeName = "/addMotobike";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Motobike"),
        backgroundColor: AppColors.colorFF8C1A,
      ),
      body: Body(),
    );
  }
}
