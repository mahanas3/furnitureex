import 'package:flutter/cupertino.dart';

class ScreenProvider extends ChangeNotifier {
  bool loading = false;

  bool _isDark = false;

  bool get isDark => _isDark;

  List<Map<String, dynamic>> cart = [];

  void loginProvider(BuildContext context) {
    Navigator.pushNamed(context, '/home');
  }

  set isDark(bool value) {
    _isDark = value;
    notifyListeners();
  }

  void tableDetails(BuildContext context) {
    Navigator.pushNamed(context, '/tabledetails');
    notifyListeners();
  }

  void chairDetails(BuildContext context) {
    Navigator.pushNamed(context, '/chairdetails');
    notifyListeners();
  }

  void sofaDetails(BuildContext context) {
    Navigator.pushNamed(context, '/sofadetails');
    notifyListeners();
  }

  void bedDetails(BuildContext context) {
    Navigator.pushNamed(context, '/beddetails');
    notifyListeners();
  }

  void addCart(BuildContext context, String image, String title, String price) {
    cart.add({"image": image, "title": title, 'price': price});
    Navigator.pushNamed(context, '/addcart');
    notifyListeners();
  }
}
