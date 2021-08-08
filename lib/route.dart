import 'dart:js';

import 'package:flutter/widgets.dart';
import 'package:victory_project1/screens/homepage%20screen/homepage.dart';
import 'package:victory_project1/screens/splash screen/splash_screen.dart';
import 'package:victory_project1/screens/login%20screen/login_screen.dart';
import 'package:victory_project1/screens/signup screen/signup_screen.dart';

final Map<String, WidgetBuilder> routes = {
  //SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  //SignupScreen.routeName: (context) => SignupScreen(),
  Homepage.routeName: (context) => Homepage(),
};
