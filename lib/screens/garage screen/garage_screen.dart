import 'package:flutter/material.dart';

class Garagescreen extends StatelessWidget {
  String _garage;
  List<String> _garageservices = [
    "oil change",
    "Air filter change",
    "Fuel filter (diesel) / Spark plugs change (petrol)",
    "Extensive brake inspection",
    "Wheel bearings and shock absorbers inspection",
    "Electrical components (e.g. battery, alternator and starter motor) tested",
    "Air conditioning system inspection",
    "Radiator and coolant hose checked"
  ];

  //  const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        title: Text("Garage Services"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _garageservices.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('_garageservices[index]'),
          );
        },
      ),
    );
  }
}
