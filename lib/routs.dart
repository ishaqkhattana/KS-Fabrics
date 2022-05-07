import 'dart:js';

import 'package:flutter/widgets.dart';
import 'package:ks_fabrics/screens/complete_profile/complete_profile_screen.dart';
import 'package:ks_fabrics/screens/forgot_password/forgot_password_screen.dart';
import 'package:ks_fabrics/screens/login_success/login_success_screen.dart';
import 'package:ks_fabrics/screens/sign_in/sign_in_screen.dart';
import 'package:ks_fabrics/screens/sign_up/sign_up_screen.dart';
import 'package:ks_fabrics/screens/splash/splash_screen.dart';

import 'package:ks_fabrics/screens/home/home_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen()
  HomeScreen.routeName: (context) => HomeScreen(),
};
