import 'package:flutter/material.dart';
import 'package:repair_app/screens/success_vehicle/components/body.dart';

class SuccessVehicleScreen extends StatelessWidget {
  static String routeName = "/successVehicle";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
