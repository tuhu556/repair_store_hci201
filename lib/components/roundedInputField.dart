import 'package:flutter/material.dart';
import 'package:repair_app/components/text_field_container.dart';
import 'package:repair_app/contanst/color.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
