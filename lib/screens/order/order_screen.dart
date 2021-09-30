import 'package:flutter/material.dart';
import 'package:repair_app/components/bottom_nav_bar.dart';

import 'package:repair_app/screens/order/components/body.dart';

import '../../enum.dart';

class OrderScreen extends StatelessWidget {
  static String routeName = "/orderScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Body(),
      bottomNavigationBar: BottomNavBar(selectedMenu: MenuState.order),
    );
  }
}
