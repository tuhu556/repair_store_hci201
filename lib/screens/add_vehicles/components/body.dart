import 'package:flutter/material.dart';
import 'package:repair_app/components/rounded_button.dart';
import 'package:repair_app/config/constants.dart';
import 'package:repair_app/screens/add_car/add_car_screen.dart';
import 'package:repair_app/screens/add_motobike/add_motobike_screen.dart';
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
              SizedBox(height: size.height * 0.10),
              Padding(
                padding: const EdgeInsets.only(left: 5.0, bottom: 20.0),
                child: Text("Select your type of vehicle",
                    style: new TextStyle(
                        fontSize: 24.0,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: GestureDetector(
                  child: Image(
                    image: AssetImage("assets/images/cars_button.png"),
                  ),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      AddCarScreen.routeName,
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: GestureDetector(
                  child: Image(
                    image: AssetImage("assets/images/motobikes_button.png"),
                  ),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      AddMotoScreen.routeName,
                    );
                  },
                ),
              ),
              SizedBox(height: size.height * 0.10),
              RoundedButton(
                color: AppColors.colorFF8C1A,
                textColor: Colors.white,
                text: "Skip",
                press: () {
                  Navigator.pushNamed(
                    context,
                    HomeScreen.routeName,
                  );
                },
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.start,
          ),
        ),
      ),
    );
  }
}
