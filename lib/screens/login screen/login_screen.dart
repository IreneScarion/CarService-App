//import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:victory_project1/screens/login%20screen/Components/body.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = "/LoginScreen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: Center(
            child: Form(
      key: _formkey,
      child: SingleChildScrollView
      (
        child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "GEEX",
                    style: TextStyle(
                      fontSize: (50),
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                      height: 1.5,
                    ),
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: (30),
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  TextFormField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      ),
                      labelText: 'Username',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Please enter name";
                      } else
                        print("Good job");
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      ),
                      labelText: 'Password',
                    ),
                     validator: (value) {
                      if (value.isEmpty) {
                        return "Password required";
                      } else
                        print("Good job");
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: (){},
                        highlightColor: Colors.teal,
                        child: Text(
                          "Forgot password?",
                          textAlign: TextAlign.right,
                          style: TextStyle(color: Colors.teal),
                        )),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        
                        child: Text("Sign in"),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                          primary: Colors.teal),
                        onPressed: () {
                      // if(_formkey.currentState.validate()){
                      //   Scaffold.of(context)
                      //   .showSnackBar(SnackBar(content: Text("Good job")));
                      // }else{
                        Navigator.pushNamed(context,'/location');
                      // }
                        },
                      ),
                    ),
                  ),
                   SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't you have an account?"),
                        InkWell(
                          child: Text("Create account",
                              style: TextStyle(
                                color: Colors.teal,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ]),
                ],
              )),
      ),
    ),
          ),
        ));
  }
}
