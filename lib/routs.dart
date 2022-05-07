import 'package:flutter/widgets.dart';
import 'package:ks_fabrics/screens/splash/splash_screen.dart';

import 'screens/splash/home/home_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
