import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:repair_app/components/rounded_button.dart';
import 'package:repair_app/contanst/color.dart';
import 'package:repair_app/screens/booking_form/booking_form_screen.dart';
import 'package:repair_app/screens/success_find/success_find_screen.dart';

class SpinnerScreen extends StatefulWidget {
  static String routeName = "/spinner";

  @override
  _SpinnerScreenState createState() => _SpinnerScreenState();
}

class _SpinnerScreenState extends State<SpinnerScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => SuccessFindScreen(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(left: 63, top: 80),
                    child: Image.asset("assets/images/finding.png")),
                Padding(
                  padding: EdgeInsets.only(top: 185),
                  child: SpinKitThreeBounce(color: AppColors.colorFF8C1A),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Text(
              "Looking for your fixer...",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            RoundedButton(
              color: Color(0xFFFF5656),
              textColor: Colors.white,
              text: "Cancel",
              press: () {
                Navigator.pushNamed(
                  context,
                  BookingFormScreen.routeName,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
