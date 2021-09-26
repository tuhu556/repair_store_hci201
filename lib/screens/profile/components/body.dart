import 'package:flutter/material.dart';
import 'package:repair_app/components/rounded_button.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<String> Names = [
      'My Profile','Change Password','Payment Settings','My Voucher', 'Notification','About Us','Contact Us'
    ];
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: size.height * 0.04),
            Align(
              alignment: Alignment.center,
              child: Image.asset("assets/images/profile-avatar.png"),
            ),
            SizedBox(height: size.height * 0.02),
            Align(
              alignment: Alignment.center,
              child: Text("Ronaldo",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            new ListView.builder(
                itemBuilder: (_,int index)=>EachList(Names[index]),
                itemCount: Names.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
            ),
            Align(
              alignment: Alignment.center,
              child: RoundedButton(
                color: Color(0xffECF0F1),
                textColor: Colors.black,
                text: "Sign out",
                press: () {
                },
              ),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      )
    );
  }
}

class EachList extends StatelessWidget{
  final String name;
  EachList(this.name);
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 28),
      child: 
        new Row(
          children: <Widget>[
            new Text(name,style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),),
            new Icon(Icons.navigate_next, color: Colors.black, size: 30.0),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
    );
  }
}