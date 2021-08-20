import 'package:flutter/material.dart';

class Garagescreen extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        title: Text("Garage Services"),
        centerTitle: true,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
