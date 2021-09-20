import 'package:flutter/material.dart';
import 'package:repair_app/contanst/color.dart';
import 'package:repair_app/screens/add_car/components/body.dart';

class AddCarScreen extends StatelessWidget {
  static String routeName = "/addCar";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Car"),
        backgroundColor: AppColors.colorFF8C1A,
      ),
      body: Body(),
    );
  }
}
