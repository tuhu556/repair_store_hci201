import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:repair_app/components/already_have_an_account_acheck.dart';
import 'package:repair_app/components/no_account_text.dart';
import 'package:repair_app/components/roundedInputField.dart';
import 'package:repair_app/components/rounded_button.dart';
import 'package:repair_app/components/rounded_password_field.dart';
import 'package:repair_app/components/social_card.dart';
import 'package:repair_app/contanst/color.dart';
import 'package:repair_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:repair_app/screens/sign_up/sign_up_screen.dart';
import 'package:repair_app/screens/success_login/success_login_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool? remember = false;
    Size size = MediaQuery.of(context).size;
    GlobalKey<FormState> _loginKeyForm = GlobalKey();
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
                SizedBox(height: size.height * 0.10),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                Form(
                  key: _loginKeyForm,
                  child: Column(
                    children: [
                      RoundedInputField(
                        hintText: "Your Email",
                        onChanged: (value) {},
                      ),
                      RoundedPasswordField(
                        hintText: "Password",
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35),
                  child: Row(
                    children: [
                      Checkbox(
                        value: remember,
                        activeColor: kPrimaryColor,
                        onChanged: (value) {},
                      ),
                      Text("Remember me"),
                      Spacer(),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(
                            context, ForgotPasswordScreen.routeName),
                        child: Text(
                          "Forgot Password",
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  ),
                ),
                RoundedButton(
                  color: AppColors.colorFF8C1A,
                  textColor: Colors.white,
                  text: "LOGIN",
                  press: () {
                    if (_loginKeyForm.currentState!.validate()) {
                      Navigator.pushNamed(
                        context,
                        SuccessLoginScreen.routeName,
                      );
                    }
                  },
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
