import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:multi_select_flutter/chip_display/multi_select_chip_display.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:repair_app/components/rounded_button.dart';
import 'package:repair_app/contanst/color.dart';
import 'package:repair_app/screens/add_location/add_location_screen.dart';
import 'package:repair_app/screens/booking_form/data/problem.dart';
import 'package:repair_app/screens/booking_form/data/vehicle.dart';
import 'package:repair_app/screens/home/home_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool showTextbox = false;
  int selection = 0;
  static List<Problem> _problems = [
    Problem(id: 1, str: "Other"),
    Problem(id: 2, str: "I can't start the vehicle"),
    Problem(id: 3, str: "My vehicle has weird sound"),
    Problem(id: 4, str: "I can't control my vehicle"),
    Problem(id: 5, str: "My vehicle something/ often shuts down"),
    Problem(id: 6, str: "My vehicle has weird smell"),
    Problem(id: 7, str: "My vehicle shakes excruciatingly when I start it"),
    Problem(id: 8, str: "Vehicle's brakes have problems"),
    Problem(id: 9, str: "The Steering Wheel is Shaking"),
    Problem(id: 10, str: "The Sensors Are Malfunctioning"),
  ];

  final _items = _problems
      .map((problem) => MultiSelectItem<Problem>(problem, problem.str))
      .toList();

  List<Problem> _selectedProblem = [];

  final _multiSelectKey = GlobalKey<FormFieldState>();

  @override
  void initState() {
    _selectedProblem = _problems;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return KeyboardDismisser(
      child: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: EdgeInsets.only(
                top: 5.0, left: 30.0, right: 30.0, bottom: 5.0),
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
                  'Repair',
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
                        height: size.height * 0.03,
                      ),
                      // Text(
                      //   "What's your vehicle's problem ?",
                      //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      // ),
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
                      // MultiSelectChipField(
                      //   items: _items,
                      //   initialValue: [],
                      //   scroll: false,
                      //   title: Text("What's your problems? (*)"),
                      //   headerColor: Colors.orange.withOpacity(0.5),
                      //   decoration: BoxDecoration(
                      //     border: Border.all(
                      //         color: (Colors.orange[700])!, width: 1.8),
                      //   ),
                      //   selectedChipColor: Colors.orange.withOpacity(0.5),
                      //   selectedTextStyle: TextStyle(color: Colors.orange[800]),
                      //   onTap: (values) {
                      //     setState(() {
                      //       _selectedProblem = List<Problem>.from(values);
                      //       bool found = false;
                      //       for (Problem item in _selectedProblem) {
                      //         if (item.str == "Other") {
                      //           found = true;
                      //         }
                      //       }
                      //       if (found == true) {
                      //         showTextbox = true;
                      //       } else {
                      //         showTextbox = false;
                      //       }
                      //     });
                      //   },
                      // ),
                      MultiSelectBottomSheetField(
                        initialChildSize: 0.4,
                        listType: MultiSelectListType.CHIP,
                        searchable: true,
                        buttonText: Text("What's your problems?"),
                        title: Text("Problems"),
                        items: _items,
                        onConfirm: (values) {
                          setState(() {
                            _selectedProblem = List<Problem>.from(values);
                            bool found = false;
                            for (Problem item in _selectedProblem) {
                              if (item.str == "Other") {
                                found = true;
                              }
                            }
                            if (found == true) {
                              showTextbox = true;
                            } else {
                              showTextbox = false;
                            }
                          });
                        },
                        chipDisplay: MultiSelectChipDisplay(
                          onTap: (value) {
                            setState(() {
                              _selectedProblem.remove(value);
                            });
                          },
                        ),
                      ),
                      _selectedProblem == null || _selectedProblem.isEmpty
                          ? Container(
                              padding: EdgeInsets.all(10),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "None selected",
                                style: TextStyle(color: Colors.black54),
                              ))
                          : Container(),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Visibility(
                        child: Container(
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              hintText: 'Other Problem',
                              labelText: 'Other Problem',
                              labelStyle: TextStyle(
                                  color: Color(0XFFFF0000).withOpacity(0.5)),
                            ),
                            controller: vehicleSelected,
                          ),
                        ),
                        visible: showTextbox,
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      DropdownSearch.multiSelection(
                        mode: Mode.DIALOG,
                        items: services,
                        label: "Do you know which vehicle part has problem?",
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),

                      DropdownSearch<String>(
                        mode: Mode.DIALOG,
                        items: vehicles,
                        label: "How long had your vehicle's problems appear?",
                        onChanged: (text) {},
                      ),

                      // Container(
                      //   child: TextFormField(
                      //     decoration: InputDecoration(
                      //       border: OutlineInputBorder(
                      //         borderRadius: BorderRadius.circular(15),
                      //         borderSide: BorderSide.none,
                      //       ),
                      //       filled: true,
                      //       hintText:
                      //           'Anything else you want to let your fixer know?',
                      //       labelText: 'Note',
                      //     ),
                      //     controller: vehicleSelected,
                      //   ),
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.symmetric(horizontal: 10),
                      //   child: Stack(
                      //     children: <Widget>[
                      //       Container(
                      //         child: TextFormField(
                      //           decoration: InputDecoration(
                      //             border: OutlineInputBorder(
                      //               borderRadius: BorderRadius.circular(15),
                      //               borderSide: BorderSide.none,
                      //             ),
                      //             filled: true,
                      //             hintText: "Your problem vehicle's part",
                      //             labelText: "Your problem vehicle's part",
                      //           ),
                      //           controller: serviceSelected,
                      //         ),
                      //       ),
                      //       Align(
                      //         alignment: Alignment.centerRight,
                      //         child: PopupMenuButton<String>(
                      //           icon: const Icon(Icons.arrow_drop_down),
                      //           onSelected: (String value) {
                      //             serviceSelected.text = value;
                      //           },
                      //           itemBuilder: (BuildContext context) {
                      //             return services.map<PopupMenuItem<String>>(
                      //                 (String value) {
                      //               return new PopupMenuItem(
                      //                   child: new Text(value), value: value);
                      //             }).toList();
                      //           },
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),

                      // Padding(
                      //   padding: EdgeInsets.symmetric(horizontal: 10),
                      //   child: TextFormField(
                      //     decoration: InputDecoration(
                      //       border: OutlineInputBorder(
                      //         borderRadius: BorderRadius.circular(15),
                      //         borderSide: BorderSide.none,
                      //       ),
                      //       filled: true,
                      //       hintText: 'Describe the problem of your vehicle...',
                      //       labelText:
                      //           "Describe the problem of your vehicle? (*)",
                      //       labelStyle: TextStyle(
                      //           color: Color(0XFFFF0000).withOpacity(0.5)),
                      //     ),
                      //     onChanged: (value) {},
                      //     maxLines: 5,
                      //   ),
                      // ),
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
final serviceSelected = TextEditingController();
var services = [
  "No, I don't",
  'Brake System',
  'Cooling System',
  'Engine System',
  'Fuel System',
];
var vehicles = [
  'I do not know',
  'today',
  '1 week',
  '1 month',
  '1 year',
];
