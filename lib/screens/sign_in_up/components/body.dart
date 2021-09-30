import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:repair_app/components/rounded_button.dart';
import 'package:repair_app/contanst/color.dart';
import 'package:repair_app/screens/login/login_screen.dart';
import 'package:repair_app/screens/sign_up/sign_up_screen.dart';

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
                "assets/icons/repair.svg",
                height: size.height * 0.20,
              ),
              SizedBox(height: size.height * 0.10),
              RoundedButton(
                color: AppColors.colorFF8C1A,
                textColor: Colors.white,
                text: "Login",
                press: () {
                  Navigator.pushNamed(
                    context,
                    LoginScreen.routeName,
                  );
                },
              ),
              SizedBox(height: size.height * 0.03),
              RoundedButton(
                color: AppColors.colorECF0F1,
                textColor: Colors.black,
                text: "Sign Up",
                press: () {
                  Navigator.pushNamed(
                    context,
                    SignUpScreen.routeName,
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
