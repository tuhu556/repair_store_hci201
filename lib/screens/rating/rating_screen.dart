import 'package:flutter/material.dart';
import 'package:repair_app/screens/rating/components/body.dart';

class RatingScreen extends StatelessWidget {
  static String routeName = "/rating";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 225, 195, 1.0),
      body: Body(),
    );
  }
}
