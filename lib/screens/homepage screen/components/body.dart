import 'package:flutter/material.dart';
import 'package:victory_project1/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: getProportionateScreenWidth(173),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(),
                  ],
                )
              ],
            ),
            Container(),
            Container(),
            Container()
          ],
        ),
      ),
    );
  }
}
