import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iti_final/screens/furniture_screen.dart';
class RegisterationScreen extends StatefulWidget {
  @override
  _RegisterationScreenState createState() => _RegisterationScreenState();
}
class _RegisterationScreenState extends State<RegisterationScreen> {
  String? _email, _password;
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
                margin:
                const EdgeInsets.only(left: 120.0, right: 120.0, top: 20.0),
                constraints: BoxConstraints.expand(height: 140.0),
                width: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/icons/icon-08.png"),
                      fit: BoxFit.cover),
                )),
            Container(
              padding: const EdgeInsets.fromLTRB(12.4, 0, 12.4, 3.0),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment(0.02, 1.0),
                      child: Text(
                        "Find your",
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal),
                      )),
                  Align(
                    alignment: Alignment(0.02, 1.0),
                    child: Text(
                      "unique piece!",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment(0.02, 1.0),
                    child: Text(
                      "Join us,",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            _getRegistrationForm(),
            Container(
              margin: const EdgeInsets.only(top: 5.0),
              width: MediaQuery.of(context).size.width * 0.25,
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Text(
                  "Sign up with",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 130.0,
                right: 130.0,
                top: 1.0,
              ),
              constraints: BoxConstraints.expand(height: 100.0),
              width: MediaQuery.of(context).size.width * 0.45,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/icons/icon-01.png"),
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(top: 1.0),
              width: MediaQuery.of(context).size.width * 0.60,
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Text(
                  "Already have an account? " "Sign In",
                  style: TextStyle(fontSize: 38),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getRegistrationForm() {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              onFieldSubmitted: (String? value) {
                _email = value;
              },
              onSaved: (String? value) {
                _email = value;
              },
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your email";
                }
                if (!value.contains("@")) {
                  return "Please enter a valid email";
                }
              },
              decoration: InputDecoration(
                labelText: "E-mail",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              onFieldSubmitted: (String? value) {
                _password = value;
              },
              onSaved: (String? value) {
                _password = value;
              },
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your password";
                }

              },
              decoration: InputDecoration(
                labelText: "Password",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            _isLoading
                ? Center(child: CircularProgressIndicator())
                : Container(
              margin: EdgeInsets.only(top: 1),
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28)),
                padding: EdgeInsets.only(
                    top: 15, bottom: 15, left: 50, right: 50),
                child: Text(
                  "Create Account",
                  style: TextStyle(fontSize: 18),
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProductScreen()),
                        (Route<dynamic> route) => false,
                  );
                },
                color: Color(0xFF9FA8DA),
                textColor: Color(0xFFFFFFFF),
              ),
            )
          ],
        ),
      ),
    );
  }
}