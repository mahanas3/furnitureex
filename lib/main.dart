import 'package:flutter/material.dart';
import 'package:furnitureex/provider/screen_provider.dart';
import 'package:furnitureex/routs/route.dart';
import 'package:furnitureex/services/theme_services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ScreenProvider(),
    child:  Main(),));
}

class Main extends StatelessWidget {
  Main({super.key});

  bool? email;

  @override
  Widget build(BuildContext context) {

    final firebaseProvider = context.watch<ScreenProvider>();

    final isDarkMode = firebaseProvider.isDark;

    return Consumer<ScreenProvider>(
      builder: (BuildContext context, value, Widget? child) {
      return MaterialApp(
        title: 'Furnitureex',
        themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
        darkTheme: ThemeServices.buildDarkTheme(),
        theme: ThemeServices.buildLightTheme(),
        debugShowCheckedModeBanner: false,
        initialRoute: email == false ? '/' : '/bottomnavigation',
        onGenerateRoute: AppRoute.routesettings,
      );}
    );
  }
}
