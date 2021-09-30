import 'package:flutter/material.dart';
import 'package:repair_app/screens/add_location/components/body.dart';

class AddLocationScreen extends StatelessWidget {
  static String routeName = "/addLocation";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 225, 195, 1.0),
      body: Body(),
    );
  }
}
