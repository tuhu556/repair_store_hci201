import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:repair_app/routes.dart';
import 'package:repair_app/screens/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Repair-Booking-App',
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme(
        Theme.of(context).textTheme,
      ),),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
