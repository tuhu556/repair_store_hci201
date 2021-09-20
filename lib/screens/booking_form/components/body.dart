import 'package:flutter/material.dart';
import 'package:repair_app/components/roundedInputField.dart';
import 'package:repair_app/components/rounded_button.dart';
import 'package:repair_app/config/constants.dart';
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
            children: [
              SizedBox(
                height: size.height * 0.1,
              ),
              Text(
                "What's your vehicle's problem ?",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      child: Column(
                        children: [
                          Image.asset("assets/images/camera.png"),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Upload Picture")
                        ],
                      ),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          HomeScreen.routeName,
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: Column(
                        children: [
                          Image.asset("assets/images/video.png"),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Upload Video")
                        ],
                      ),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          HomeScreen.routeName,
                        );
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              RoundedInputField(
                hintText: "Select your vehicle",
                onChanged: (value) {},
              ),
              RoundedInputField(
                hintText: "Problem (Optional)",
                onChanged: (value) {},
              ),
              RoundedInputField(
                hintText: "Note (Optional)",
                onChanged: (value) {},
              ),
              RoundedButton(
                color: AppColors.colorFF8C1A,
                textColor: Colors.white,
                text: "Submit",
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
