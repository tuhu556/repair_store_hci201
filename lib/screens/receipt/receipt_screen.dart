import 'package:flutter/material.dart';
import 'package:repair_app/screens/receipt/components/body.dart';

class ReceiptScreen extends StatelessWidget {
  static String routeName = "/receipt";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 225, 195, 1.0),
      body: Body(),
    );
  }
}
