import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:repair_app/components/bottom_nav_bar.dart';
import 'package:repair_app/components/rounded_button.dart';
import 'package:repair_app/contanst/color.dart';
import 'package:repair_app/helper/helper.dart';
import 'package:repair_app/screens/add_car/add_car_screen.dart';
import 'package:repair_app/screens/add_motobike/add_motobike_screen.dart';
import 'package:repair_app/screens/booking_form/booking_form_screen.dart';

import '../../enum.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: KeyboardDismisser(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                color: AppColors.colorFFFFFF,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 6, 30, 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: GestureDetector(
                          child: Image(
                            image: AssetImage("assets/images/find.png"),
                          ),
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              BookingFormScreen.routeName,
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Text(
                          'Add your vehicles information!',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 16,
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
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: GestureDetector(
                          child: Image(
                            image: AssetImage(
                                "assets/images/motobikes_button.png"),
                          ),
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              AddMotoScreen.routeName,
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.025,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Near me',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColors.color0B0C0C,
                            ),
                          ),
                          InkWell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'View all',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.color0B0C0C,
                                ),
                              ),
                            ),
                            onTap: () {},
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GridView.count(
                          physics: ScrollPhysics(),
                          crossAxisCount: 1,
                          childAspectRatio: 800 / 450,
                          shrinkWrap: true,
                          children: List.generate(5, (index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Image.asset(
                                      'assets/images/garage.png',
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'UpTown garage',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: AppColors.color0B0C0C,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.location_city),
                                            Flexible(
                                              child: Text(
                                                '13 th Street, 46 W 12th St, NY',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: AppColors.color0B0C0C,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                                "assets/icons/clock.svg"),
                                            Text(
                                              ' 3 min - 1.1 km',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: AppColors.color0B0C0C,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          width: 135,
                                          child: TextButton(
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      AppColors.colorFF8C1A,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30))),
                                              onPressed: () {},
                                              child: Text(
                                                'Book now',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColors.colorFFFFFF,
                                                ),
                                              )),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(selectedMenu: MenuState.home),
    );
  }
}

Widget buttonTransport(String svg, String asset, int index) {
  return GestureDetector(
    child: Container(
        child: Stack(
      children: [
        SvgPicture.asset(svg),
        index == 1
            ? Positioned(
                top: 10,
                right: 0,
                child: Image.asset(asset),
              )
            : Positioned(
                top: 8,
                left: 0,
                child: Image.asset(asset),
              ),
      ],
    )),
    onTap: () {},
  );
}
