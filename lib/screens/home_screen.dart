import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  //late Future<List<User>> usersFuture;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(24.4, 42.0, 24.4, 42.0),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment(0.02, 1.0),
                      child: Text(
                        "Decor&",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      )),
                  Align(
                    alignment: Alignment(0.02, 1.0),
                    child: Text(
                      "enjoy!",
                      style:
                      TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin:
                const EdgeInsets.only(left: 20.0, right: 20.0, top: 34.0),
                constraints: BoxConstraints.expand(height: 300.0),
                width: MediaQuery.of(context).size.width * 0.65,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/icons/icon-09.png"),
                      fit: BoxFit.cover),
                )),
            Container(
              margin: EdgeInsets.only(top: 40),
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28)),
                padding:
                EdgeInsets.only(top: 15, bottom: 15, left: 60, right: 60),
                child: Text(
                  "Get started",
                  style: TextStyle(fontSize: 18),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
                color: Color(0xFF9FA8DA),
                textColor: Color(0xFFFFFFFF),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              width: MediaQuery.of(context).size.width * 0.60,
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Text(
                  "Already have an account? Sign In",
                  style: TextStyle(fontSize: 38),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}