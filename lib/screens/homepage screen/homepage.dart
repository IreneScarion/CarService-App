import 'package:flutter/material.dart';
import 'components/body.dart';

class Homepage extends StatefulWidget {
  static String routeName = "/Homepage";

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
