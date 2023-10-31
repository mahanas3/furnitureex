import 'package:flutter/cupertino.dart';

class FurnitureProvider extends ChangeNotifier{

  void loginProvider(BuildContext context){
    Navigator.pushNamed(context, '/home');
  }
}