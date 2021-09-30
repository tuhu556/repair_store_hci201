import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:repair_app/components/rounded_button.dart';
import 'package:repair_app/contanst/color.dart';
import 'package:repair_app/screens/login/login_screen.dart';

class ConfirmPasswordScreen extends StatelessWidget {
  static String routeName = "/confirmPassword";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: size.height * 0.15),
              SvgPicture.asset(
                "assets/icons/success.svg",
                height: size.height * 0.25,
              ),
              SizedBox(height: size.height * 0.05),
              Text(
                "Success!",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: size.height * 0.20),
              RoundedButton(
                color: AppColors.colorFF8C1A,
                textColor: Colors.white,
                text: "Return to Login",
                press: () {
                  Navigator.pushNamed(
                    context,
                    LoginScreen.routeName,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
