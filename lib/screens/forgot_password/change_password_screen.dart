import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:repair_app/components/rounded_button.dart';
import 'package:repair_app/components/rounded_password_field.dart';
import 'package:repair_app/contanst/color.dart';
import 'package:repair_app/screens/forgot_password/confirm_password_screen.dart';

class ChangePasswordScreeen extends StatelessWidget {
  static String routeName = "/changePassword";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Change your Password"),
        backgroundColor: AppColors.colorFF8C1A,
      ),
      body: KeyboardDismisser(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.05,
                ),
                Text(
                  "Please enter your new password",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: size.height * 0.1,
                ),
                RoundedPasswordField(
                  hintText: "Enter new Password",
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                RoundedPasswordField(
                  hintText: "Re enter Password",
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                RoundedButton(
                  color: AppColors.colorFF8C1A,
                  textColor: Colors.white,
                  text: "Confirm",
                  press: () {
                    Navigator.pushNamed(
                      context,
                      ConfirmPasswordScreen.routeName,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
