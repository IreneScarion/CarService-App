import 'dart:ui';

import 'package:flutter/material.dart'
    show
        BuildContext,
        Colors,
        Column,
        FontWeight,
        SafeArea,
        StatelessWidget,
        Text,
        TextStyle,
        Widget;

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // child: SizedBox(
      // Width: double.infinity,
      child: Column(
        children: [
          Text(
            "Login",
            style: TextStyle(
              color: Colors.blue,
              fontSize: (30),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
