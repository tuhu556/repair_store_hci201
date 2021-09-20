import 'package:flutter/material.dart';

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
const kPrimaryColor = Color(0xFF8C1A);
const kPrimaryLightColor = Color(0xFFF1E6FF);

class AppColors {
  static final Color colorFFFFFF = HexColor("#FFFFFF");
  static final Color color66CCFF = HexColor("#66CCFF");
  static final Color color0066FF = HexColor("#0066FF");
  static final Color color19191A = HexColor("#9191A");
  static final Color colorF2F2F7 = HexColor("#F2F2F7");
  static final Color color000000 = HexColor("#000000");
  static final Color colorEC407A = HexColor("#EC407A");
  static final Color colorB7B7B7 = HexColor("#B7B7B7");
  static final Color colorDD323A = HexColor("#DD323A");
  static final Color color30A197 = HexColor("#30A197");
  static final Color color0B0C0C = HexColor("#0B0C0C");
  static final Color color666666 = HexColor("#666666");
  static final Color colorF2F2F3 = HexColor("#F2F2F3");
  static final Color color999999 = HexColor("#999999");
  static final Color colorC5C5C5 = HexColor("#C5C5C5");
  static final Color color9C27B0 = HexColor("#9C27B0");
  static final Color colorFFAE64 = HexColor("#FFAE64");
  static final Color colorFF8C1A = HexColor("#FF8C1A");
  static final Color colorFFFF7643 = HexColor("0xFFFF7643");
  static final Color colorECF0F1 = HexColor("#ECF0F1");
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
