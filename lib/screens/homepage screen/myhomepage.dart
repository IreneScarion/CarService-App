import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
//import 'package:flutter_image_slideshow/indicator.dart';

class Myhomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Colors.teal,
        ),
        body: ImageSlideshow(
          width: double.infinity,
          indicatorBackgroundColor: Colors.blueAccent,
          indicatorColor: Colors.teal,
          height: 200,
          initialPage: 0,
          children: [
            Image.asset(
              'assets/images/petrolstation1.png',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/petrolstation1.png',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/petrolstation1.png',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/petrolstation1.png',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/petrolstation1.png',
              fit: BoxFit.cover,
            ),
          ],
          onPageChanged: (value) {
            print('Page changed: $value');
          },
          autoPlayInterval: 3000,
          isLoop: true,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.teal),
                child: Text('Drawer Menu'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
