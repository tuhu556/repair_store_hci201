import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            //bao quát tất cả

            Container(
              //hình chữ nhật màu cam phía trên
              height: MediaQuery.of(context).size.height / 3 + 20,
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
              top: 80,
              left: MediaQuery.of(context).size.width / 2 - 140,
              child: Text(
                'Congratulation!\nWe have found your fixer',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF268A15).withOpacity(0.7),
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                ),
              ),
            ),

            Positioned(
              //phần trắng phía dưới

              //khoảng cách từ tren của phần màu cam
              top: MediaQuery.of(context).size.height / 3 - 10,

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
                        height: 180,
                      ),
                      Row(
                        children: <Widget>[
                          FaIcon(
                            FontAwesomeIcons.mapMarkerAlt,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "245 Vũ Tông Phan, Thanh Xuân, Hà Nội",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Row(
                        children: <Widget>[
                          FaIcon(
                            FontAwesomeIcons.clock,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "3 min - 1.1 km",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Color(0xffFF8573),
                            size: 21,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFF8573),
                            size: 21,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFF8573),
                            size: 21,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFF8573),
                            size: 21,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffFF8573),
                            size: 21,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                        ],
                      ),
                      SizedBox(
                            height: 22,
                          ),
                      Text(
                            "Work at: Đức Vương Motorbike repair shop",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                    ],
                    
                  ),
                ),
              ),
            ),
            Positioned(
              //ảnh thợ sửa chữa và tên thợ

              top: MediaQuery.of(context).size.height / 3 - 90,
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
                      height: 30,
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
    );
  }
}
