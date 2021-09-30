import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:repair_app/components/roundedInputField.dart';
import 'package:repair_app/components/rounded_button.dart';
import 'package:repair_app/components/rounded_password_field.dart';
import 'package:repair_app/contanst/color.dart';
import 'package:repair_app/screens/success_sign_up/success_sign_up_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return KeyboardDismisser(
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: size.height * 0.05),
                SvgPicture.asset(
                  "assets/icons/repair.svg",
                  height: size.height * 0.15,
                ),
                SizedBox(height: size.height * 0.05),
                Text(
                  "SIGNUP",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                RoundedInputField(
                  icon: Icons.email,
                  hintText: "Enter Your Email",
                  onChanged: (value) {},
                ),
                RoundedInputField(
                  icon: Icons.phone_android,
                  hintText: "Enter Your Phone Number",
                  onChanged: (value) {},
                ),
                RoundedInputField(
                  hintText: "Enter Your Password",
                  icon: Icons.lock,
                  onChanged: (value) {},
                ),
                RoundedPasswordField(
                  hintText: "Re Enter Your Password",
                  onChanged: (value) {},
                ),
                RoundedButton(
                  color: AppColors.colorFF8C1A,
                  textColor: Colors.white,
                  text: "Sign Up",
                  press: () {
                    Navigator.pushNamed(
                      context,
                      SuccessSignUpScreen.routeName,
                    );
                  },
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     SocialCard(
                //       icon: "assets/icons/google-icon.svg",
                //       press: () {},
                //     ),
                //     SocialCard(
                //       icon: "assets/icons/facebook-2.svg",
                //       press: () {},
                //     ),
                //     SocialCard(
                //       icon: "assets/icons/twitter.svg",
                //       press: () {},
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
