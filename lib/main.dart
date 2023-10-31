import 'package:flutter/material.dart';
import 'package:furnitureex/provider/Furniture_Provider.dart';
import 'package:furnitureex/routs/route.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => FurnitureProvider(),
    child:  Main(),));
}

class Main extends StatelessWidget {
  Main({super.key});

  bool? email;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: email == false ? '/' : '/home',
      onGenerateRoute: AppRoute.routesettings,
    );
  }
}
