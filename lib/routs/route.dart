import 'package:flutter/material.dart';
import 'package:furnitureex/routs/rout_names.dart';
import '../Homescreen/homepage.dart';
import '../Homescreen/loginpage.dart';


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
