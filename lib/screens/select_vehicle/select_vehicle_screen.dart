import 'package:flutter/material.dart';
import 'package:repair_app/screens/select_vehicle/components/body.dart';

class SelectVehicleScreen extends StatelessWidget {
  static String routeName = "/selectVehicle";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 225, 195, 1.0),
      body: Body(),
    );
  }
}
