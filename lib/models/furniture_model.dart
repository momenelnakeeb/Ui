import 'package:flutter/material.dart';
class ProductModel extends StatelessWidget {
  final Image image;

  ProductModel(
      this.image,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: 120,
            margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(6)),
              color: Colors.transparent,
              image: DecorationImage(
                  image: AssetImage("assets/images/image-03.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                Align(
                  child: Image.asset(
                    "assets/icons/icon-02.png",
                    width: 50,
                    height: 50,
                  ),
                  alignment: Alignment.topLeft,
                ),
                Text(
                  "Chairs",
                  style: TextStyle(color: Colors.black54, fontSize: 16),
                ),
                Text(
                  "from\$190.-",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
