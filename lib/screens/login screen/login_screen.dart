import 'package:flutter/material.dart';
import 'package:victory_project1/screens/login%20screen/Components/body.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = "/LoginScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GEEX",
          style: TextStyle(
            fontSize: (50),
            fontWeight: FontWeight.bold,
            color: Colors.blue,
            height: 1.5,
          ),
        ),
      ),
      body: Body(),
    );
  }
}
