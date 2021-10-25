import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:repair_app/components/rounded_button.dart';
import 'package:repair_app/contanst/color.dart';
import 'package:repair_app/screens/booking_form/booking_form_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return KeyboardDismisser(
      child: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding:
                EdgeInsets.only(top: 5.0, left: 30.0, right: 30.0, bottom: 5.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Icon(Icons.arrow_back_ios,
                        color: Colors.black, size: 17.0),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  'Select your vehicle',
                  style: TextStyle(
                    color: Color(0xFFFF8C1A),
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                      ),
                      Image.asset(
                        "assets/images/vehicle_repair.png",
                        height: 150,
                      ),
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      DropdownSearch<String>(
                        mode: Mode.DIALOG,
                        items: vehicles,
                        showSearchBox: true,
                        label: "Select your vehicle",
                        onChanged: print,
                      ),
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      RoundedButton(
                        color: AppColors.colorFF8C1A,
                        textColor: Colors.white,
                        text: "Next",
                        press: () {
                          Navigator.pushNamed(
                            context,
                            BookingFormScreen.routeName,
                          );
                        },
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                    ],
                  ),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

final vehicleSelected = TextEditingController();
var vehicles = [
  'Honda Vision',
  'VinFast VF e34',
];
