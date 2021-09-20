import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:repair_app/components/rounded_button.dart';
import 'package:repair_app/contanst/color.dart';
import 'package:repair_app/screens/sign_in_up/sign_in_up_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: size.height * 0.25),
              SvgPicture.asset(
                "assets/icons/repair_white.svg",
                height: size.height * 0.20,
              ),
              SizedBox(height: size.height * 0.05),
              Text(
                "Booking vehicle mechanic App",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: size.height * 0.15),
              RoundedButton(
                color: Colors.white,
                textColor: AppColors.colorFF8C1A,
                text: "Next",
                press: () {
                  Navigator.pushNamed(context, SignInUpScreen.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
