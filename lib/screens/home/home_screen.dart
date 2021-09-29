import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:repair_app/components/bottom_nav_bar.dart';
import 'package:repair_app/components/rounded_button.dart';
import 'package:repair_app/contanst/color.dart';
import 'package:repair_app/dtos/garage.dart';
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
    List<Garage> garages = [
      Garage(
          id: 1,
          name: "Hoàng Việt",
          image: "assets/images/garage.png",
          address: "123 Nguyễn Thị Minh Khai, Q1, HCM",
          time: 3,
          distance: 1.1,
          rate: 5),
      Garage(
          id: 2,
          name: "ABC Garage",
          image: "assets/images/garage_2.png",
          address: "113 Trần Hưng Đạo, Q9, HCM",
          time: 10,
          distance: 2.5,
          rate: 4.5),
      Garage(
          id: 3,
          name: "OP Garage",
          image: "assets/images/garage_3.png",
          address: "114 Quang Trung, Q12, HCM",
          time: 10,
          distance: 2.5,
          rate: 4),
      Garage(
          id: 4,
          name: "SSS Garage",
          image: "assets/images/garage_4.png",
          address: "321 Trần Phú, Q2, HCM",
          time: 10,
          distance: 2.5,
          rate: 3),
      Garage(
          id: 5,
          name: "BBB Garage",
          image: "assets/images/garage_5.png",
          address: "321 Trần Phú, Q2, HCM",
          time: 10,
          distance: 2.5,
          rate: 1),
    ];
    return Scaffold(
      body: KeyboardDismisser(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                color: AppColors.colorFFFFFF,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 6, 10, 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Center(
                        child: Padding(
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
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          'Add your vehicles information!',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 5, top: 15),
                              child: GestureDetector(
                                child: Image(
                                  image: AssetImage(
                                      "assets/images/cars_button_2.png"),
                                ),
                                onTap: () {
                                  Navigator.pushNamed(
                                    context,
                                    AddCarScreen.routeName,
                                  );
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: 2),
                              child: GestureDetector(
                                child: Image(
                                  image: AssetImage(
                                      "assets/images/motobikes_button_2.png"),
                                ),
                                onTap: () {
                                  Navigator.pushNamed(
                                    context,
                                    AddMotoScreen.routeName,
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Near me',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: AppColors.color0B0C0C,
                              ),
                            ),
                          ),
                          InkWell(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                'View all',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.color0B0C0C,
                                ),
                              ),
                            ),
                            onTap: () {},
                          ),
                        ],
                      ),
                      new ListView.builder(
                        itemBuilder: (_, int index) => EachList(garages[index]),
                        itemCount: garages.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                      ),
                      /* Container(
                        
                        child: GridView.count(
                          physics: ScrollPhysics(),
                          crossAxisCount: 1,
                          childAspectRatio: 0.5,
                          shrinkWrap: true,
                          children: List.generate(2, (index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0),
                              child: Row(
                                children: [
                                  Container(
                                    child: Image.asset('assets/images/garage.png'),
                                  ),
                                  /* Expanded(
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
                                  ) */
                                ],
                              ),
                            );
                          }),
                        ),
                      ), */
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

class EachList extends StatelessWidget {
  final Garage garage;
  EachList(this.garage);
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: new Row(
        children: <Widget>[
          Container(
            child: Image.asset(garage.image),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 20.0, top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    garage.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: AppColors.color0B0C0C,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on, size: 18),
                      Flexible(
                        child: Container(
                          margin: EdgeInsets.only(left: 5.0),
                          child: Text(
                            garage.address,
                            style: TextStyle(
                              // fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: AppColors.color0B0C0C,
                            ),
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
                      Icon(
                        Icons.access_time,
                        size: 18,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5.0),
                        child: Text(
                          '${garage.time} min - ${garage.distance} km',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: AppColors.color0B0C0C,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: RatingBar.builder(
                      itemSize: 20,
                      initialRating: garage.rate,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 1),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                      ignoreGestures: true,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    width: 135,
                    child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: AppColors.colorFF8C1A,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
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
            ),
          ),
          //new Text(garage.name,style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),),
          //new Icon(Icons.navigate_next, color: Colors.black, size: 30.0),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
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
