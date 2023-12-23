import 'package:flutter/material.dart';


class MyTextField extends StatelessWidget {

  final controller;
  final String hintText;
  final bool obscureText;
   MyTextField({super.key,
  required this.hintText,
  required this.controller,
  required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller:controller ,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),filled: true,
            fillColor: Colors.grey.shade200,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[500])

        ),
      ),
    );
  }
}
