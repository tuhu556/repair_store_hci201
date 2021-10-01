import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 55),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(left: 11)),
              Image.asset('assets/images/thosuaxehinhvuong.png'),
              SizedBox(width: 35),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Text(
                    "Hoàng Long",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Hoàng Việt repair shop",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "In progress",
                    style: TextStyle(color: Colors.green),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
