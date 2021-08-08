import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Sign extends StatefulWidget {
  @override
  _SignState createState() => _SignState();
}

class _SignState extends State<Sign> {
  String _email;
  String _password;
  String _confirmpassword;
  String _phonenumber;
  String _region;
  List<String> regions = [
    "Arusha",
    "Dar es Salaam",
    "Tanga",
    "Bukoba",
    "Manyara",
    "Dodoma",
    "Morogoro",
    "Pwani",
    "Kilimanjaro",
    "Singida",
    "Songea",
    "Shinyanga",
    "Kigoma",
    "Mara",
    "Musoma",
    "Mwanza",
    "Tabora",
    "Songwe",
    "Simiyu",
    "Ruvuma",
    "Rukwa",
    "Njombe",
    "Lindi",
    "Mtwara",
    "Katavi",
    "Geita"
  ];
  String _value;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmpass = TextEditingController();

  Widget _buildemail() {
    return TextFormField(
        decoration: InputDecoration(labelText: 'Email'),
        validator: (String value) {
          if (value.isEmpty) {
            return "Email is Required";
          }
          if (!RegExp(
                  r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
              .hasMatch(value)) {
            return "Please enter a valid Email Address";
          }
          return null;
        },
        onChanged: (val) {},
        onSaved: (String value) {
          _email = value;
        });
  }

  Widget _buildpassword() {
    return TextFormField(
        decoration: InputDecoration(labelText: 'Password'),
        controller: _pass,
        validator: (String value) {
          if (value.isEmpty) {
            return 'Password is Required';
          } else if (value.length < 8) {
            return "Password must be atleast 8 characters long";
          } else {
            return null;
          }
        },
        onChanged: (val) {},
        onSaved: (String value) {
          _password = value;
        });
  }

  Widget _buildconfirmpassword() {
    return TextFormField(
        decoration: InputDecoration(labelText: 'Corfirm Password'),
        controller: _confirmpass,
        validator: (String value) {
          if (value.isEmpty) {
            return 'Confirm your password';
          }
          if (value != _pass.text) {
            return "The password do not match";
          } else {
            return null;
          }
        },
        onChanged: (val) {},
        onSaved: (String value) {
          _confirmpassword = value;
        });
  }

  Widget _buildphonenumber() {
    return TextFormField(
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
        decoration: InputDecoration(labelText: 'PhoneNumber'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'PhoneNumber is Required';
          } else {
            return null;
          }
        },
        onChanged: (val) {},
        onSaved: (String value) {
          _phonenumber = value;
        });
  }

  /* Widget _buildregion() {
    return TextFormField(
        decoration: InputDecoration(labelText: 'Region'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Region is Required';
          } else {
            return null;
          }
        },
        onChanged: (val) {},
        onSaved: (String value) {
          _region = value;
        });
  }*/

  Widget _buildRegion() {
    return SizedBox(
      width: double.infinity,
      child: DropdownButton(
        value: _value,
        items: regions.map((region) {
          return DropdownMenuItem(
            child: Text(region),
            value: region,
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            _value = value;
          });
        },
        hint: Text("Select Region"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Create account',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  _buildemail(),
                  _buildpassword(),
                  _buildconfirmpassword(),
                  _buildphonenumber(),
                  SizedBox(height: 20),
                  _buildRegion(),

                  // create account button
                  SizedBox(height: 100.0),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17)),
                          padding:
                              EdgeInsets.all(20) //content padding inside button
                          ),
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                          return;
                        }
                        _formKey.currentState.save();
                      },
                      child: Text(
                        "Create account",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
