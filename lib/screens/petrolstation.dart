import 'package:flutter/material.dart';

class Pstation extends StatefulWidget {
  

  @override
  _PstationState createState() => _PstationState();
}

class _PstationState extends State<Pstation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.view_headline),
        backgroundColor: Colors.teal,
        title: Text("PETROL STATIONS"),
        actions: [
          Center(child: CircleAvatar(radius: 20.0,
            backgroundColor: Colors.amber,))
        ],
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index){
          return Column(
            children: [
              ListTile(
                title: Text("SERVICE"),
                subtitle: Text("Description"),
                
              ),
              Divider(),
            ],
          );
        }
      ),
      
    );
  }
}