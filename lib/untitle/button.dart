// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
   Mybutton({super.key,
   required this.text,
   required this.onPressed,
   });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: const Color.fromARGB(255, 245, 246, 246),
      child: Text(text),
    );
  }
}