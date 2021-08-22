import 'package:flutter/material.dart';
import 'package:iti_final/screens/home_screen.dart';
import 'package:flutter/services.dart';
import 'package:iti_final/screens/furniture_screen.dart';
import 'package:iti_final/components/product.dart';
import 'package:iti_final/screens/registeration_screen.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    // systemNavigationBarColor: Colors.blue, // navigation bar color
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light // status bar color
  ));
  runApp(getMyAppRootWidget());
}

Widget getMyAppRootWidget() {
  Widget materialAppWidget = new MaterialApp(
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
    ),
    initialRoute: '/',
    routes: {
      '/second': (context) => RegisterationScreen(),
      '/third': (context) => ProductScreen(),
      '/chair': (context) => ChairScreen(),
      '/night': (context) => NightStands(),
      '/sofa': (context) => Sofas(),
      '/desk': (context) => Desk(),
    },
  );
  return materialAppWidget;
}
