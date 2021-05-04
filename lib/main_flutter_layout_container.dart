/*
Standart widget terdiri dari:
  Container, GridView, ListView, Stack
sedangkan Material widget terdiri dari:
  Card, ListTile
*/

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Container',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Layout Container'),
        ),
        body: Center(
          child: _buildImageColumn(),
        ),
      ),
    );
  }

  Widget _buildImageColumn() => Container(
        decoration: BoxDecoration(
          color: Colors.black26,
        ),
        child: Column(
          children: [
            _buildImageRow(1),
            _buildImageRow(3),
          ],
        ),
      );

  Widget _buildImageRow(int imageIndex) => Row(
        children: [
          _buildDecoratedImage(imageIndex),
          _buildDecoratedImage(imageIndex + 1),
        ],
      );

  Widget _buildDecoratedImage(int imageIndex) => Expanded(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 10, color: Colors.black38),
            borderRadius: const BorderRadius.all(const Radius.circular(8)),
          ),
          margin: const EdgeInsets.all(4),
          child: Image.asset('assets/images/animal-$imageIndex.jpg'),
        ),
      );
}
