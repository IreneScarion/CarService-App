import 'package:flutter/material.dart';
import 'package:flutter_verification_code_input/flutter_verification_code_input.dart';

class Verify extends StatefulWidget {
  // const Verify({ Key? key }) : super(key: key);

  @override
  _VerifyState createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Text(
                "Enter verification code",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              SizedBox(
               height: 30,
              ),
              VerificationCodeInput(
                keyboardType: TextInputType.number,
                  length: 4,
                autofocus: true,



              )

            ],
          ),
        ),
      ),
    );
  }
}
