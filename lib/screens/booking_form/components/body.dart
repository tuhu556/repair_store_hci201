import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:repair_app/components/rounded_button.dart';
import 'package:repair_app/contanst/color.dart';
import 'package:repair_app/screens/add_location/add_location_screen.dart';
import 'package:repair_app/screens/home/home_screen.dart';
import 'package:repair_app/screens/spinner_page/spinner_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return KeyboardDismisser(
      child: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: EdgeInsets.only(
                top: 40.0, left: 30.0, right: 30.0, bottom: 25.0),
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
                  'What’s your problem?',
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
                        height: size.height * 0.01,
                      ),
                      // Text(
                      //   "What's your vehicle's problem ?",
                      //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      // ),
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
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide.none,
                                  ),
                                  filled: true,
                                  hintText: 'Select your vehicle',
                                  labelText: 'Select your vehicle',
                                ),
                                controller: vehicleSelected,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: PopupMenuButton<String>(
                                icon: const Icon(Icons.arrow_drop_down),
                                onSelected: (String value) {
                                  vehicleSelected.text = value;
                                },
                                itemBuilder: (BuildContext context) {
                                  return vehicles.map<PopupMenuItem<String>>(
                                      (String value) {
                                    return new PopupMenuItem(
                                        child: new Text(value), value: value);
                                  }).toList();
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide.none,
                                  ),
                                  filled: true,
                                  hintText: "Your problem vehicle's part",
                                  labelText: "Your problem vehicle's part",
                                ),
                                controller: serviceSelected,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: PopupMenuButton<String>(
                                icon: const Icon(Icons.arrow_drop_down),
                                onSelected: (String value) {
                                  serviceSelected.text = value;
                                },
                                itemBuilder: (BuildContext context) {
                                  return services.map<PopupMenuItem<String>>(
                                      (String value) {
                                    return new PopupMenuItem(
                                        child: new Text(value), value: value);
                                  }).toList();
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
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
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
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
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      RoundedButton(
                        color: AppColors.colorFF8C1A,
                        textColor: Colors.white,
                        text: "Submit",
                        press: () {
                          Navigator.pushNamed(
                            context,
                            AddLocationScreen.routeName,
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
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
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
