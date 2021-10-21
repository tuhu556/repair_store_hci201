import 'package:flutter/widgets.dart';
import 'package:repair_app/screens/add_car/add_car_screen.dart';
import 'package:repair_app/screens/add_location/add_location_screen.dart';
import 'package:repair_app/screens/add_motobike/add_motobike_screen.dart';
import 'package:repair_app/screens/add_vehicles/add_vehicle_screen.dart';
import 'package:repair_app/screens/booking_form/booking_form_screen.dart';
import 'package:repair_app/screens/cancel_booking/cancel_booking_screen.dart';
import 'package:repair_app/screens/forgot_password/change_password_screen.dart';
import 'package:repair_app/screens/forgot_password/confirm_password_screen.dart';
import 'package:repair_app/screens/forgot_password/enter_code_screen.dart';
import 'package:repair_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:repair_app/screens/home/home_screen.dart';
import 'package:repair_app/screens/login/login_screen.dart';
import 'package:repair_app/screens/maintain_vehicle/maintain_vehicle_screen.dart';
import 'package:repair_app/screens/notification/notification_screen.dart';
import 'package:repair_app/screens/order_tracking/tracking_screen.dart';
import 'package:repair_app/screens/profile/profile_screen.dart';
import 'package:repair_app/screens/rating/rating_screen.dart';
import 'package:repair_app/screens/receipt/receipt_screen.dart';
import 'package:repair_app/screens/repair_vehicle/repair_vehicle_screen.dart';
import 'package:repair_app/screens/select_vehicle/select_vehicle_screen.dart';
import 'package:repair_app/screens/sign_in_up/sign_in_up_screen.dart';
import 'package:repair_app/screens/sign_up/sign_up_screen.dart';
import 'package:repair_app/screens/spinner_page/spinner_screen.dart';
import 'package:repair_app/screens/splash/splash_screen.dart';
import 'package:repair_app/screens/success_canceled/success_cancel_screen.dart';
import 'package:repair_app/screens/success_find/success_find_screen.dart';
import 'package:repair_app/screens/success_login/success_login_screen.dart';
import 'package:repair_app/screens/success_sign_up/success_sign_up_screen.dart';
import 'package:repair_app/screens/success_vehicle/success_vehicle_screen.dart';

import 'screens/order/order_screen.dart';

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
  MapView.routeName: (context) => MapView(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  EnterCodeScreen.routeName: (context) => EnterCodeScreen(),
  ChangePasswordScreeen.routeName: (context) => ChangePasswordScreeen(),
  ConfirmPasswordScreen.routeName: (context) => ConfirmPasswordScreen(),
  AddLocationScreen.routeName: (context) => AddLocationScreen(),
  OrderScreen.routeName: (context) => OrderScreen(),
  ReceiptScreen.routeName: (context) => ReceiptScreen(),
  RatingScreen.routeName: (context) => RatingScreen(),
  NotificationScreen.routeName: (context) => NotificationScreen(),
  CancelBookingScreen.routeName: (context) => CancelBookingScreen(),
  SuccessCancelScreen.routeName: (context) => SuccessCancelScreen(),
  SelectVehicleScreen.routeName: (context) => SelectVehicleScreen(),
  RepairScreen.routeName: (context) => RepairScreen(),
  MaintainScreen.routeName: (context) => MaintainScreen(),
};
