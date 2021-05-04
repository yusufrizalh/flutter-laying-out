// menambahkan layout widget kedalam page
/* 
ada 2 cara: material app dan non material app
- material app menyediakan appbar
- non material app tidak ada appbar 
*/

import 'package:flutter/material.dart';

void main() {
  runApp(RowWidgetDemo());
}

class MyMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Layout'),
        ),
        body: Center(
          child: Text('Hello Flutter'),
        ),
      ),
    );
  }
}

class NonMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Center(
        child: Text(
          'Hello Flutter',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 32, color: Colors.black87),
        ),
      ),
    );
  }
}

class RowWidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Belajar Row Widget'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Image.asset('assets/images/landscape-1.jpg'),
              ),
              Expanded(
                flex: 2,
                child: Image.asset('assets/images/landscape-2.jpg'),
              ),
              Expanded(
                child: Image.asset('assets/images/landscape-3.jpg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
