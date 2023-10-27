import 'package:flutter/material.dart';
import 'package:furnitureex/screens/login.dart';

void main(){
  runApp(const Main());
}
class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
