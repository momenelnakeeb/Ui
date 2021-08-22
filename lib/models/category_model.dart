import 'package:flutter/material.dart';

class CategoryModel extends StatelessWidget {
  final Image image;
  final String name;

  CategoryModel(this.image, this.name);
  // @override
  //_CategoryModelState createState() => _CategoryModelState();
//}

//class _CategoryModelState extends State<CategoryModel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey),
          ),
          width: 87,
          height: 28,
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Row(
              children: <Widget>[
                image,
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}