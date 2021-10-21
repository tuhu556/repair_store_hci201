import 'package:flutter/material.dart';
import 'package:repair_app/contanst/color.dart';
import 'package:repair_app/screens/repair_vehicle/components/body.dart';

class RepairScreen extends StatelessWidget {
  static String routeName = "/repair";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text("Form"),
        backgroundColor: AppColors.colorFF8C1A,
      ),*/
      backgroundColor: Color.fromRGBO(255, 225, 195, 1.0),
      body: Body(),
    );
  }
}
