import 'package:flutter/material.dart';
import 'package:furnitureex/Homescreen/bottom_navigation.dart';
import 'package:furnitureex/Homescreen/cart_page.dart';
import 'package:furnitureex/routs/rout_names.dart';
import '../Homescreen/homepage.dart';
import '../Homescreen/loginpage.dart';
import '../bed_screen/beddetails_page.dart';
import '../chair_screen/chairdetails_page.dart';
import '../sofa_screen/sofadetails_page.dart';
import '../table_screen/tabledetails_page.dart';

class AppRoute {
  static Route<dynamic> routesettings(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.loginscreen:
        return MaterialPageRoute(builder: (context) => const Login());

      case RouteName.homescreen:
        return MaterialPageRoute(builder: (context) => const Home());

      case RouteName.bottomnavigation:
        return MaterialPageRoute(
            builder: (context) => const BottomNavigation());
      case RouteName.tabledetails:
        return MaterialPageRoute(builder: (context) => const TableDetails());
      case RouteName.chairdetails:
        return MaterialPageRoute(builder: (context) => const ChairDetails());
      case RouteName.sofadetails:
        return MaterialPageRoute(builder: (context) => const SofaDetails());
      case RouteName.beddetails:
        return MaterialPageRoute(builder: (context) => const BedDetails());
      case RouteName.addcart:
        return MaterialPageRoute(builder: (context) => const Cart());
      default:
        {
          return MaterialPageRoute(
            builder: (context) => const Home(),
          );
        }
    }
  }
}
