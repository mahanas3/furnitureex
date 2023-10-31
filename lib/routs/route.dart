import 'package:flutter/material.dart';
import 'package:furnitureex/routs/rout_names.dart';
import 'package:furnitureex/screens/home.dart';
import 'package:furnitureex/screens/login.dart';

class AppRoute {
  static Route<dynamic> routesettings(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.loginscreen:
        return MaterialPageRoute(builder: (context) => const Login());

      case RouteName.homescreen:
        return MaterialPageRoute(builder: (context) => const Home());
      default:
        {
          return MaterialPageRoute(
            builder: (context) => const Home(),
          );
        }
    }
  }
}
