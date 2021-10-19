import 'package:flutter/material.dart';
import 'package:repair_app/components/bottom_nav_bar.dart';
import 'package:repair_app/screens/notification/components/body.dart';

import '../../enum.dart';

class NotificationScreen extends StatelessWidget {
  static String routeName = "/notification";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNavBar(selectedMenu: MenuState.notification),
    );
  }
}
