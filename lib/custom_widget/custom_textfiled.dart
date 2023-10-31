import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  CustomTextfield(
      {super.key, required this.text1, required this.text2, this.icon});

  String text1;
  String text2;
  Widget? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontSize: 20, fontFamily: 'popins'),
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black.withOpacity(0.2))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.black,
          )),
          fillColor: Colors.white.withOpacity(0.2),
          filled: true,
          labelText: text1,
          labelStyle: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontFamily: 'popins',
              fontWeight: FontWeight.bold),
          hintText: text2,
          hintStyle: const TextStyle(
              color: Colors.black87, fontFamily: 'popins', fontSize: 20),
          prefixIcon: icon,
          prefixIconColor: Colors.black87),
    );
  }
}
