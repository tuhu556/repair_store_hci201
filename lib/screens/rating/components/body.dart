import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:repair_app/components/rounded_button.dart';
import 'package:repair_app/contanst/color.dart';
import 'package:repair_app/screens/home/home_screen.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            children: <Widget>[
              //bao quát tất cả
              Container(
                //hình chữ nhật màu cam phía trên
                height: size.height / 3 + 15,
                width: size.width,
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Container(
                      width: size.width,
                      height: size.height,
                      color: Colors.orange[100],
                    ),
                  ],
                ),
              ),

              Positioned(
                //chữ congratulation
                top: 50,
                left: size.width / 2 - 128,
                child: Text(
                  'Rating & review your fixer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFFF8C1A),
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                  ),
                ),
              ),
              Positioned(
                //phần trắng phía dưới

                //khoảng cách từ tren của phần màu cam
                top: size.height / 3 - 30,

                child: Container(
                  //tất cả phần màu trắng ở dưới
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                    // bo tròn cạnh trên và để phông nền trắng
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35)),
                  ),

                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    //padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      //tất cả thành phần ở phông màu trắng

                      children: <Widget>[
                        SizedBox(
                          height: 120,
                        ),
                        RatingBar.builder(
                          itemSize: 45,
                          initialRating: 0.0,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: false,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                          ignoreGestures: false,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              hintText: 'Review our fixer',
                              labelText: 'Review our fixer',
                            ),
                            onChanged: (value) {},
                            maxLines: 5,
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),

                        //Button Next
                        RoundedButton(
                          color: AppColors.colorFF8C1A,
                          textColor: Colors.white,
                          text: "Send",
                          press: () {
                            showAlertDialog(context);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Positioned(
                //ảnh thợ sửa chữa và tên thợ

                top: size.height / 3 - 120,
                child: Padding(
                  //ảnh thợ sửa chữa và tên thợ
                  padding: EdgeInsets.symmetric(horizontal: 85),
                  child: Column(
                    //ảnh thợ sửa chữa và tên thợ
                    children: <Widget>[
                      Container(
                        width: size.width / 3 + 100,
                        height: size.height / 6 + 30,

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
                      ),
                      Text(
                        'Hoàng Long',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins",
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

showAlertDialog(BuildContext context) {  
  // Create button  
  Widget okButton = FlatButton(  
    child: Text("OK"),  
    onPressed: () {  
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => HomeScreen(),
        ),
      );
    },  
  );  
  
  // Create AlertDialog  
  AlertDialog alert = AlertDialog(
    title: Text("Notification"),  
    content: Text("Thank you for using our service. Have a nice day <3."),  
    actions: [  
      okButton,  
    ],  
  );  
  
  // show the dialog  
  showDialog(  
    context: context,  
    barrierDismissible: false,
    builder: (BuildContext context) {  
      return alert;  
    },  
  );  
}