import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  final Padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.teal,
        child: ListView(
          padding: Padding,
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            Divider(
              color: Colors.white70,
            ),
            const SizedBox(
              height: 40,
            ),
            buildMenuItem(text: 'Home', icon: (Icons.home)),
            const SizedBox(
              height: 40,
            ),
            buildMenuItem(text: 'Home', icon: (Icons.home)),
            const SizedBox(
              height: 40,
            ),
            buildMenuItem(text: 'Home', icon: (Icons.home)),
            const SizedBox(
              height: 40,
            ),
            buildMenuItem(text: 'Home', icon: (Icons.home)),
            const SizedBox(
              height: 40,
            ),
            buildMenuItem(text: 'Home', icon: (Icons.home)),
          ],
        ),
      ),
    );
  }

  buildMenuItem({
    String text,
    IconData icon,
  }) {
    final color = Colors.white;
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(text, style: TextStyle(color: Colors.black)),
      onTap: () {},
    );
  }
}
