import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:repair_app/components/rounded_button.dart';
import 'package:repair_app/contanst/color.dart';
import 'package:repair_app/screens/home/home_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: size.height * 0.15),
              SvgPicture.asset(
                "assets/icons/success.svg",
                height: size.height * 0.25,
              ),
              SizedBox(height: size.height * 0.05),
              Text(
                "Your vehicle is added",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: size.height * 0.20),
              RoundedButton(
                color: AppColors.colorFF8C1A,
                textColor: Colors.white,
                text: "Next",
                press: () {
                  Navigator.pushNamed(
                    context,
                    HomeScreen.routeName,
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
