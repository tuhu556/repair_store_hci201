import 'package:flutter/material.dart';
import 'package:repair_app/screens/add_vehicles/components/body.dart';

class AddVehicles extends StatelessWidget {
  static String routeName = "/addVehicles";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
