import 'package:flutter/material.dart';
import 'package:repair_app/components/text_field_container.dart';
import 'package:repair_app/contanst/color.dart';

class RoundedPasswordField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.hintText,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        obscureText: true,
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock,
          ),
          suffixIcon: Icon(
            Icons.visibility,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
