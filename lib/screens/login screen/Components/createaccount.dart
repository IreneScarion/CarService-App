import 'package:flutter/material.dart';
import 'package:victory_project1/screens/signup screen/signup_screen.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyle(fontSize: (16)),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignupScreen.routeName),
          child: Text("Create account",
              style: TextStyle(fontSize: (16), color: Colors.blueAccent)),
        )
      ],
    );
  }
}
