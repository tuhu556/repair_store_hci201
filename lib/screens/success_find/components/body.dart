import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //   return Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: <Widget>[
    //       Container(
    //         padding: EdgeInsets.only(
    //             top: 100.0, left: 30.0, right: 30.0, bottom: 30.0),
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: <Widget>[
    //             Center(
    //               child: Text(
    //                 'Congratulation!\nWe have found your fixer',
    //                 textAlign: TextAlign.center,
    //                 textScaleFactor: 0.9,
    //                 style: TextStyle(
    //                   color: Color(0xFF268A15).withOpacity(0.9),
    //                   fontSize: 27,
    //                   fontWeight: FontWeight.w700,
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //       Expanded(
    //         child: Container(
    //           padding: EdgeInsets.symmetric(horizontal: 20.0),
    //           decoration: BoxDecoration(
    //             color: Colors.white,
    //             borderRadius: BorderRadius.only(
    //               topLeft: Radius.circular(20.0),
    //               topRight: Radius.circular(20.0),
    //             ),
    //           ),
    //         ),
    //       ),
    //     ],
    //   );
    // }
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
              top: 100,
              left: MediaQuery.of(context).size.width / 2 - 140,
              child: Text(
                'Congratulation!\nWe have found your fixer',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF268A15).withOpacity(0.8),
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
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    //tất cả thành phần ở phông màu trắng

                    children: <Widget>[
                      SizedBox(
                        height: 200,
                      ),
                      Row(
                        children: <Widget>[
                          FaIcon(
                            FontAwesomeIcons.mapMarkerAlt,
                            color: Colors.grey[400],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              //ảnh thợ sửa chữa và tên thợ

              top: MediaQuery.of(context).size.height / 3 - 40,
              child: Padding(
                //ảnh thợ sửa chữa và tên thợ
                padding: EdgeInsets.symmetric(horizontal: 75),
                child: Column(
                  //ảnh thợ sửa chữa và tên thợ
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 3 + 90,
                      height: MediaQuery.of(context).size.height / 6 + 50,

                      // ảnh thợ sửa xe
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Positioned(
                            top: -10,
                            right: -70,
                            height: 180,
                            child: Image.asset(
                              'assets/images/thosuaxe.jpg', //ảnh
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
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
