import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:victory_project1/screens/login%20screen/Components/body.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = "/LoginScreen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Center(
    
        child:Container(
          width: MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(30),
          child:Column(
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
          height: 20.0,
        ),
            Expanded(
        child: TextField(
            obscureText: false,
            decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
            ),
            labelText: 'Username',
        ),
            ),
            ),
        SizedBox(
          height: 30.0,
        ),
        Expanded(
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
            ),
            labelText: 'Password',
          ),
        ),
        ),
         SizedBox(
         height: 10,
         ),
        Expanded(
          child: InkWell(
          highlightColor: Colors.teal,
          child: Text("Forgot password?",
          textAlign:TextAlign.right,
           style: TextStyle(color: Colors.teal),)
          ),
        ),
         SizedBox(
          height: 30.0,
        ),
           Expanded(
             child: InkWell(
               onTap: (){},
         child: Container(
           width: 200,height: 10,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Sign in", textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              color: Colors.white),)
            ),
           decoration: BoxDecoration(
             color: Colors.teal,
            borderRadius: BorderRadius.circular(50.0),    
             
           ),
         ),
             ),
           ),
        Expanded(
          child: Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Text("Don't you have an account?"),
            InkWell(
        child: Text("Create account",
        style:TextStyle(
          color: Colors.teal,
          fontWeight: FontWeight.bold,
        )),
            ),
            ]
          ),
        ),
            
        
            ],
          ))
        )
      
    );
  }
}
