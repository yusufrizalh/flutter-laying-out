import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _jumlahBuku = 1;

  void _incrementCounter() {
    setState(() {
      _jumlahBuku++;
    });
  }

  void _resetCounter() {
    setState(() {
      _jumlahBuku = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text(
          'Belajar Flutter',
          style: TextStyle(color: Colors.white),
        ),
        // backgroundColor: Colors.yellowAccent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.green, Colors.blue])),
        ),
        actions: [
          IconButton(
            icon: new Icon(
              Icons.call,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: new Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.purple,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              'Buku yang dibaca: $_jumlahBuku',
              style: TextStyle(fontSize: 32, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    onPressed: _resetCounter,
                    tooltip: 'Reset Jumlah Buku',
                    child: Icon(Icons.reset_tv),
                  ),
                  FloatingActionButton(
                    onPressed: _incrementCounter,
                    tooltip: 'Tambah Jumlah Buku',
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
