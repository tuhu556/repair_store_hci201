import 'package:flutter/material.dart';
import 'package:repair_app/components/roundedInputField.dart';
import 'package:repair_app/components/rounded_button.dart';
import 'package:repair_app/config/constants.dart';
import 'package:repair_app/screens/success_vehicle/success_vehicle_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: size.height * 0.05),
              Text(
                "Your Car",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: size.height * 0.05),
              RoundedInputField(
                hintText: "Type",
                onChanged: (value) {},
              ),
              RoundedInputField(
                hintText: "Brand",
                onChanged: (value) {},
              ),
              RoundedInputField(
                hintText: "Model Code",
                onChanged: (value) {},
              ),
              RoundedInputField(
                hintText: "Capacity (cm3)",
                onChanged: (value) {},
              ),
              RoundedInputField(
                hintText: "Year of Manufacture",
                onChanged: (value) {},
              ),
              RoundedButton(
                color: AppColors.colorFF8C1A,
                textColor: Colors.white,
                text: "Finish",
                press: () {
                  Navigator.pushNamed(
                    context,
                    SuccessVehicleScreen.routeName,
                  );
                },
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
