import 'package:flutter/material.dart';
import 'package:iti_final/models/category_model.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryModel(
              Image.asset(
                "assets/icons/icon-03.png",
                height: 20,
                width: 20,
                alignment: Alignment.topLeft,
              ),
              "Price Range"),
          CategoryModel(
              Image.asset(
                "assets/icons/icon-03.png",
                height: 20,
                width: 20,
                alignment: Alignment.topLeft,
              ),
              "Tags"),
          CategoryModel(
              Image.asset(
                "assets/icons/icon-03.png",
                height: 20,
                width: 20,
                alignment: Alignment.topLeft,
              ),
              "Style"),
          CategoryModel(
              Image.asset(
                "assets/icons/icon-03.png",
                height: 20,
                width: 20,
                alignment: Alignment.topLeft,
              ),
              "Color"),
        ],
      ),
    );
  }
}