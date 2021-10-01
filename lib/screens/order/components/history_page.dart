import 'package:flutter/material.dart';
import 'package:repair_app/dtos/garage.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

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
              Image.asset('assets/images/thosuaxehistory1.png'),
              SizedBox(width: 35),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 3),
                  Text(
                    "Hoàng Huy",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "ABC Garage",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Periodic maintenance",
                    style: TextStyle(color: Colors.grey),
                  ),
                   SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        "500,000 VND",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Done",
                        style: TextStyle(color: Colors.green),
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
