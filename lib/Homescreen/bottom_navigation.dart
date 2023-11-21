import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furnitureex/Homescreen/cart_page.dart';
import 'package:furnitureex/Homescreen/homepage.dart';
import 'package:furnitureex/Homescreen/profile_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int pageIndex = 0;
  final pages = [
    const Home(),
    const Cart(),
    const Profile(),
  ];

  @override
  void onitemTapped(int num) {
    setState(() {
      pageIndex = num;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        fixedColor: Colors.black,
        currentIndex: pageIndex,
        onTap: onitemTapped,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
                //color: Colors.black87,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart, color: Colors.black87),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts_outlined, color: Colors.black87),
              label: 'Profile'),
        ],
      ),
    );
  }
}
