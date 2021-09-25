import 'package:flutter/material.dart';
import 'package:repair_app/contanst/color.dart';
import 'package:repair_app/screens/booking_form/components/body.dart';

class BookingFormScreen extends StatelessWidget {
  static String routeName = "/bookingForm";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
        backgroundColor: AppColors.colorFF8C1A,
      ),
      body: Body(),
    );
  }
}
