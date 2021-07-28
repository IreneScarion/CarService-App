import 'package:flutter/widgets.dart';

import 'package:victory_project1/screens/splash screen/splash_screen.dart';
import 'package:victory_project1/screens/login%20screen/login_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
};
