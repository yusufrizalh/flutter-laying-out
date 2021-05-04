import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout',
      home: buildHomePage('Strawberry Pancake'),
    );
  }

  Widget buildHomePage(String title) {
    final titleText = Container(
      padding: EdgeInsets.all(20),
      child: Text(
        'Strawberry Pancake',
        style: TextStyle(
          fontWeight: FontWeight.w800,
          letterSpacing: 0.5,
          fontSize: 30,
        ),
      ),
    );

    final subTitle = Text(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
      'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua '
      'Ornare massa eget egestas purus.',
      textAlign: TextAlign.center,
      style: TextStyle(fontFamily: 'Georgia', fontSize: 25),
    );

    var stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.black),
        Icon(Icons.star, color: Colors.black),
      ],
    );

    final ratings = Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          Text(
            '200 Reviews',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          )
        ],
      ),
    );

    final descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    );

    final iconList = DefaultTextStyle.merge(
        style: descTextStyle,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.kitchen, color: Colors.green[500]),
                  Text('PREPARATION: '),
                  Text('20 min'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.timer, color: Colors.green[500]),
                  Text('COOK: '),
                  Text('45 min'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.restaurant, color: Colors.green[500]),
                  Text('FEEDS: '),
                  Text('2-4'),
                ],
              ),
            ],
          ),
        ));

    final leftColumn = Container(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        children: [
          titleText,
          subTitle,
          ratings,
          iconList,
        ],
      ),
    );

    final mainImage = Image.asset(
      'assets/images/pancake.jpg',
      fit: BoxFit.fill,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
          height: 600,
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 440,
                  child: leftColumn,
                ),
                mainImage,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
