import 'package:flutter/widgets.dart';
import 'package:repair_app/screens/add_car/add_car_screen.dart';
import 'package:repair_app/screens/add_motobike/add_motobike_screen.dart';
import 'package:repair_app/screens/add_vehicles/add_vehicle_screen.dart';
import 'package:repair_app/screens/booking_form/booking_form_screen.dart';
import 'package:repair_app/screens/home/home_screen.dart';
import 'package:repair_app/screens/login/login_screen.dart';
import 'package:repair_app/screens/profile/profile_screen.dart';
import 'package:repair_app/screens/sign_in_up/sign_in_up_screen.dart';
import 'package:repair_app/screens/sign_up/sign_up_screen.dart';
import 'package:repair_app/screens/spinner_page/spinner_screen.dart';
import 'package:repair_app/screens/splash/splash_screen.dart';
import 'package:repair_app/screens/success_find/success_find_screen.dart';
import 'package:repair_app/screens/success_login/success_login_screen.dart';
import 'package:repair_app/screens/success_sign_up/success_sign_up_screen.dart';
import 'package:repair_app/screens/success_vehicle/success_vehicle_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInUpScreen.routeName: (context) => SignInUpScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  SuccessLoginScreen.routeName: (context) => SuccessLoginScreen(),
  SuccessSignUpScreen.routeName: (context) => SuccessSignUpScreen(),
  AddVehicles.routeName: (context) => AddVehicles(),
  AddCarScreen.routeName: (context) => AddCarScreen(),
  AddMotoScreen.routeName: (context) => AddMotoScreen(),
  SuccessVehicleScreen.routeName: (context) => SuccessVehicleScreen(),
  BookingFormScreen.routeName: (context) => BookingFormScreen(),
  SpinnerScreen.routeName: (context) => SpinnerScreen(),
  SuccessFindScreen.routeName: (context) => SuccessFindScreen(),
};
