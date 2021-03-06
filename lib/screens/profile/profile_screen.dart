import 'package:flutter/material.dart';
import 'package:repair_app/components/bottom_nav_bar.dart';
import 'package:repair_app/screens/profile/components/body.dart';

import '../../enum.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
