import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:repair_app/components/roundedInputField.dart';
import 'package:repair_app/components/rounded_button.dart';
import 'package:repair_app/contanst/color.dart';
import 'package:repair_app/screens/booking_form/data/list.dart';
import 'package:repair_app/screens/home/home_screen.dart';
import 'package:repair_app/screens/spinner_page/spinner_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return KeyboardDismisser(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.025,
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
                    GestureDetector(
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
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
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
                  ],
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            hintText: 'Select your vehicle',
                            labelText: 'Select your vehicle',
                          ),
                          controller: vehicleSelected,
                        ),
                      ),
                      PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          vehicleSelected.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return vehicles
                              .map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(
                                child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            hintText: "Your problem vehicle's part",
                            labelText: "Your problem vehicle's part",
                          ),
                          controller: serviceSelected,
                        ),
                      ),
                      PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          serviceSelected.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return services
                              .map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(
                                child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      hintText: 'Enter a description...',
                      labelText: 'Description (optional)',
                    ),
                    onChanged: (value) {},
                    maxLines: 5,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      hintText: 'Enter a Note...',
                      labelText: 'Note (optional)',
                    ),
                    onChanged: (value) {},
                    maxLines: 5,
                  ),
                ),
                RoundedButton(
                  color: AppColors.colorFF8C1A,
                  textColor: Colors.white,
                  text: "Submit",
                  press: () {
                    Navigator.pushNamed(
                      context,
                      SpinnerScreen.routeName,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final vehicleSelected = TextEditingController();
final serviceSelected = TextEditingController();
var services = [
  'Brake System',
  'Cooling System',
  'Engine System',
  'Fuel System',
  'Other...',
  'I have no idea',
];
var vehicles = [
  'Honda Vision',
  'SUV',
];
