import 'package:flutter/cupertino.dart';

class ScreenProvider extends ChangeNotifier{

  bool loading = false;

  bool _isDark=false;

  bool get isDark => _isDark;

  void loginProvider(BuildContext context){
    Navigator.pushNamed(context, '/home');
  }
  set isDark(bool value) {
    _isDark = value;
    notifyListeners();
  }
  void tableDetails(BuildContext context){
    Navigator.pushNamed(context, '/tabledetails');
  }
}