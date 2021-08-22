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

class NightStands extends StatefulWidget {
  @override
  _NightStandsState createState() => _NightStandsState();
}

class _NightStandsState extends State<NightStands> {
  int q = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            expandedHeight: 400,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image.asset(
                    'assets/images/image-04.jpg',
                    width: 400,
                    fit: BoxFit.cover,
                  ),
                  Align(
                      alignment: Alignment(1, 1),
                      child: Image.asset(
                        'assets/icons/icon-07.png',
                        width: 100,
                        height: 100,
                      )),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: Align(
              alignment: Alignment(-.8, 0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Night Stands",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Colors.black),
                        ),
                        Text(
                          "Night Stands",
                          style: TextStyle(fontSize: 15, color: Colors.black87),
                        )
                      ],
                    ),
                    Text(
                      '\$ 140.-',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF9FA8DA)),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat",
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Quantity',
                              style: TextStyle(
                                  fontSize: 18, color: Colors.black54),
                            ),
                            Row(
                              children: [
                                RawMaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      q--;
                                    });
                                  },
                                  child: Icon(Icons.minimize),
                                  shape: CircleBorder(),
                                  fillColor: Color(0xFF9FA8DA),
                                  elevation: 0,
                                  constraints: BoxConstraints.tightFor(
                                      width: 30, height: 30),
                                ),
                                Text(
                                  '$q',
                                  style: TextStyle(
                                      fontSize: 19, color: Colors.black),
                                ),
                                RawMaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      q++;
                                    });
                                  },
                                  child: Icon(Icons.add),
                                  shape: CircleBorder(),
                                  fillColor: Color(0xFF9FA8DA),
                                  elevation: 0,
                                  constraints: BoxConstraints.tightFor(
                                      width: 30, height: 30),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Colors',
                              style: TextStyle(
                                  fontSize: 18, color: Colors.black54),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(2.5),
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Colors.blue.shade800,
                                      )),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.blue.shade800,
                                        shape: BoxShape.rectangle),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(2.5),
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Colors.red,
                                      )),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.rectangle),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(2.5),
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Colors.green,
                                      )),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        shape: BoxShape.rectangle),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(2.5),
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Colors.black,
                                      )),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.rectangle),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChairScreen extends StatefulWidget {
  @override
  _ChairScreenState createState() => _ChairScreenState();
}

class _ChairScreenState extends State<ChairScreen> {
  int q = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            expandedHeight: 400,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image.asset(
                    'assets/images/image-03.jpg',
                    width: 400,
                    fit: BoxFit.cover,
                  ),
                  Align(
                      alignment: Alignment(1, 1),
                      child: Image.asset(
                        'assets/icons/icon-07.png',
                        width: 100,
                        height: 100,
                      )),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: Align(
              alignment: Alignment(-.8, 0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Chairs",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Colors.black),
                        ),
                        Text(
                          "Chairs",
                          style: TextStyle(fontSize: 15, color: Colors.black87),
                        )
                      ],
                    ),
                    Text(
                      '\$ 190.-',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF9FA8DA)),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat",
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Quantity',
                              style:
                              TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            Row(
                              children: [
                                RawMaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      q--;
                                    });
                                  },
                                  child: Icon(Icons.minimize),
                                  shape: CircleBorder(),
                                  fillColor: Color(0xFF9FA8DA),
                                  elevation: 0,
                                  constraints: BoxConstraints.tightFor(
                                      width: 30, height: 30),
                                ),
                                Text(
                                  '$q',
                                  style: TextStyle(
                                      fontSize: 19, color: Colors.black),
                                ),
                                RawMaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      q++;
                                    });
                                  },
                                  child: Icon(Icons.add),
                                  shape: CircleBorder(),
                                  fillColor: Color(0xFF9FA8DA),
                                  elevation: 0,
                                  constraints: BoxConstraints.tightFor(
                                      width: 30, height: 30),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Colors',
                              style:
                              TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(2.5),
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Colors.blue.shade800,
                                      )),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.blue.shade800,
                                        shape: BoxShape.rectangle),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(2.5),
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Colors.red,
                                      )),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.rectangle),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(2.5),
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Colors.green,
                                      )),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        shape: BoxShape.rectangle),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(2.5),
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Colors.black,
                                      )),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.rectangle),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Sofas extends StatefulWidget {
  @override
  _SofasState createState() => _SofasState();
}

class _SofasState extends State<Sofas> {
  int q = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            expandedHeight: 400,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image.asset(
                    'assets/images/image-02.jpg',
                    width: 400,
                    fit: BoxFit.cover,
                  ),
                  Align(
                      alignment: Alignment(1, 1),
                      child: Image.asset(
                        'assets/icons/icon-07.png',
                        width: 100,
                        height: 100,
                      )),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: Align(
              alignment: Alignment(-.8, 0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sofas",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Colors.black),
                        ),
                        Text(
                          "Sofas",
                          style: TextStyle(fontSize: 15, color: Colors.black87),
                        )
                      ],
                    ),
                    Text(
                      '\$ 420.-',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF9FA8DA)),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat",
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Quantity',
                              style:
                              TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            Row(
                              children: [
                                RawMaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      q--;
                                    });
                                  },
                                  child: Icon(Icons.minimize),
                                  shape: CircleBorder(),
                                  fillColor: Color(0xFF9FA8DA),
                                  elevation: 0,
                                  constraints: BoxConstraints.tightFor(
                                      width: 30, height: 30),
                                ),
                                Text(
                                  '$q',
                                  style: TextStyle(
                                      fontSize: 19, color: Colors.black),
                                ),
                                RawMaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      q++;
                                    });
                                  },
                                  child: Icon(Icons.add),
                                  shape: CircleBorder(),
                                  fillColor: Color(0xFF9FA8DA),
                                  elevation: 0,
                                  constraints: BoxConstraints.tightFor(
                                      width: 30, height: 30),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Colors',
                              style:
                              TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(2.5),
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Colors.blue.shade800,
                                      )),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.blue.shade800,
                                        shape: BoxShape.rectangle),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(2.5),
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Colors.red,
                                      )),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.rectangle),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(2.5),
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Colors.green,
                                      )),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        shape: BoxShape.rectangle),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(2.5),
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Colors.black,
                                      )),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.rectangle),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Desk extends StatefulWidget {
  @override
  _DeskState createState() => _DeskState();
}

class _DeskState extends State<Desk> {
  int q = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            expandedHeight: 400,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image.asset(
                    'assets/images/image-01.jpg',
                    width: 400,
                    fit: BoxFit.cover,
                  ),
                  Align(
                      alignment: Alignment(1, 1),
                      child: Image.asset(
                        'assets/icons/icon-07.png',
                        width: 100,
                        height: 100,
                      )),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: Align(
              alignment: Alignment(-.8, 0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Desks",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Colors.black),
                        ),
                        Text(
                          "Desks",
                          style: TextStyle(fontSize: 15, color: Colors.black87),
                        )
                      ],
                    ),
                    Text(
                      '\$ 320.-',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF9FA8DA)),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat",
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Quantity',
                              style:
                              TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            Row(
                              children: [
                                RawMaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      q--;
                                    });
                                  },
                                  child: Icon(Icons.minimize),
                                  shape: CircleBorder(),
                                  fillColor: Color(0xFF9FA8DA),
                                  elevation: 0,
                                  constraints: BoxConstraints.tightFor(
                                      width: 30, height: 30),
                                ),
                                Text(
                                  '$q',
                                  style: TextStyle(
                                      fontSize: 19, color: Colors.black),
                                ),
                                RawMaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      q++;
                                    });
                                  },
                                  child: Icon(Icons.add),
                                  shape: CircleBorder(),
                                  fillColor: Color(0xFF9FA8DA),
                                  elevation: 0,
                                  constraints: BoxConstraints.tightFor(
                                      width: 30, height: 30),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Colors',
                              style:
                              TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(2.5),
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Colors.blue.shade800,
                                      )),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.blue.shade800,
                                        shape: BoxShape.rectangle),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(2.5),
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Colors.red,
                                      )),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.rectangle),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(2.5),
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Colors.green,
                                      )),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        shape: BoxShape.rectangle),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(2.5),
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Colors.black,
                                      )),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.rectangle,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
