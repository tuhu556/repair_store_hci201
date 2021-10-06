import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:repair_app/components/rounded_button.dart';
import 'package:repair_app/contanst/color.dart';
import 'package:repair_app/screens/booking_form/booking_form_screen.dart';
import 'package:repair_app/screens/spinner_page/spinner_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return KeyboardDismisser(
      child: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(
                    top: 40.0, left: 30.0, right: 30.0, bottom: 25.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        child: Icon(Icons.arrow_back_ios,
                            color: Colors.black, size: 17.0),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    Text(
                      'Select your location',
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
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.location_on,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            labelText: ' Đường D1, Khu Công Nghệ Cao, Long Thạnh Mỹ, Thành Phố Thủ Đức, Thành phố Hồ Chí Minh',
                          ),
                          onChanged: (value) {},
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: ButtonMini(
                            text: "Detect my location",
                            press: () {},
                            icon: Icon(
                              Icons.location_on,
                              color: AppColors.colorFF8C1A,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Save as",
                            textAlign: TextAlign.end,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Wrap(
                            spacing: 10,
                            children: <Widget>[
                              ButtonMini(
                                text: "Home",
                                press: () {},
                                icon: Icon(
                                  Icons.home,
                                  color: AppColors.colorFF8C1A,
                                ),
                              ),
                              ButtonMini(
                                text: "Office",
                                press: () {},
                                icon: Icon(
                                  Icons.location_city,
                                  color: AppColors.colorFF8C1A,
                                ),
                              ),
                              ButtonMini(
                                text: "Other",
                                press: () {},
                                icon: Icon(
                                  Icons.location_on,
                                  color: AppColors.colorFF8C1A,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.1,
                        ),
                        RoundedButton(
                            text: "Book",
                            press: () {
                              Navigator.pushNamed(
                                context,
                                SpinnerScreen.routeName,
                              );
                            },
                            color: AppColors.colorFF8C1A,
                            textColor: Colors.white),
                      ],
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonMini extends StatelessWidget {
  final String text;
  final Function()? press;
  final Icon icon;
  const ButtonMini({
    Key? key,
    required this.text,
    required this.press,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton.icon(
        onPressed: () {},
        icon: icon,
        label: Text(
          text,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        style: TextButton.styleFrom(backgroundColor: AppColors.colorECF0F1),
      ),
    );
  }
}
