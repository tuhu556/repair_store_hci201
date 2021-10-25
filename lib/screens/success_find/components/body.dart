import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:repair_app/screens/order_tracking/tracking_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => MapView(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              //bao quát tất cả

              Container(
                //hình chữ nhật màu cam phía trên
                height: MediaQuery.of(context).size.height / 3 + 15,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.orange[100],
                    ),
                  ],
                ),
              ),

              Positioned(
                //chữ congratulation
                top: 20,
                left: MediaQuery.of(context).size.width / 2 - 145,
                child: Text(
                  'Congratulation!\nWe have found your fixer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF268A15).withOpacity(0.7),
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                  ),
                ),
              ),
              Positioned(
                //phần trắng phía dưới

                //khoảng cách từ tren của phần màu cam
                top: MediaQuery.of(context).size.height / 3 - 50,

                child: Container(
                  //tất cả phần màu trắng ở dưới
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    // bo tròn cạnh trên và để phông nền trắng
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35)),
                  ),

                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      //tất cả thành phần ở phông màu trắng

                      children: <Widget>[
                        SizedBox(
                          height: 130,
                        ),
                        RatingBar.builder(
                          itemSize: 25,
                          initialRating: 4.5,
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
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: <Widget>[
                            FaIcon(
                              FontAwesomeIcons.mapMarkerAlt,
                              color: Colors.black,
                              size: 15,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "245 Nam kỳ khởi nghĩa, Phường Bến Thành, Quận 1",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            FaIcon(FontAwesomeIcons.clock,
                                color: Colors.black, size: 15),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "3 min - 1.1 km",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "Work at: Hoàng Việt Motorbike repair\nshop",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Image.asset(
                          'assets/images/tiemsuaxe.png', //ảnh
                          fit: BoxFit.contain,
                          height: 150,
                          width: 300,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Positioned(
                //ảnh thợ sửa chữa và tên thợ

                top: MediaQuery.of(context).size.height / 3 - 120,
                child: Padding(
                  //ảnh thợ sửa chữa và tên thợ
                  padding: EdgeInsets.symmetric(horizontal: 75),
                  child: Column(
                    //ảnh thợ sửa chữa và tên thợ
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width / 3 + 100,
                        height: MediaQuery.of(context).size.height / 6 + 30,

                        // ảnh thợ sửa xe
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Positioned(
                              child: Image.asset(
                                'assets/images/thosuaxe.png', //ảnh
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                        width: 20,
                      ),
                      Text(
                        'Hoàng Long',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
