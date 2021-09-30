import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:repair_app/components/roundedInputField.dart';
import 'package:repair_app/components/rounded_button.dart';
import 'package:repair_app/contanst/color.dart';
import 'package:repair_app/screens/forgot_password/change_password_screen.dart';

class EnterCodeScreen extends StatelessWidget {
  static String routeName = "/enterCode";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Enter code"),
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
                  "Please enter your code",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: size.height * 0.1,
                ),
                RoundedInputField(
                  hintText: "Enter code",
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
                      ChangePasswordScreeen.routeName,
                    );
                  },
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                RoundedButton(
                  color: AppColors.colorFF8C1A,
                  textColor: Colors.white,
                  text: "Re-send",
                  press: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
