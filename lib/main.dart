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
  static final showGrid = false; // set ke false untuk melihat ListView

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout GridView & ListView',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter GridView | ListView'),
        ),
        body: Center(
          child: showGrid ? _buildGrid() : _buildList(),
        ),
      ),
    );
  }

  Widget _buildGrid() => GridView.extent(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        maxCrossAxisExtent: 150,
        padding: const EdgeInsets.all(4),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: _buildGridTileList(44),
      );

  // gambar memiliki nama yang seragam pic-1.jpg, pic-2.jpg dan seterusnya
  List<Container> _buildGridTileList(int count) => List.generate(
      count,
      (i) => Container(
            child: Image.asset('assets/pictures/pic-$i.jpg'),
          ));

  Widget _buildList() => ListView(
        children: [
          _tile(
              'Mortal Combat',
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              Icons.theaters),
          _tile(
              'Nomadland',
              'Purus ut faucibus pulvinar elementum. Ut etiam sit amet nisl purus in mollis.',
              Icons.theaters),
          _tile(
              'The Father',
              'Aliquet nec ullamcorper sit amet. Elit ut aliquam purus sit. Lacus sed turpis tincidunt id aliquet risus feugiat in.',
              Icons.theaters),
          _tile(
              'Sound of Metal',
              'Mauris pharetra et ultrices neque ornare aenean. Dui accumsan sit amet nulla facilisi.',
              Icons.theaters),
          _tile(
              'Promising Young Woman',
              'At tempor commodo ullamcorper a lacus vestibulum sed arcu non. Amet mauris commodo quis imperdiet massa tincidunt nunc.',
              Icons.theaters),
          _tile(
              'Nobody',
              'Faucibus turpis in eu mi bibendum neque egestas congue quisque. Magna etiam tempor orci eu lobortis elementum nibh tellus.',
              Icons.theaters),
          _tile(
              'Stowaway',
              'Et netus et malesuada fames ac turpis egestas. Semper eget duis at tellus at urna condimentum mattis pellentesque.',
              Icons.theaters),
          _tile(
              'The Tomorrow War',
              'Odio ut enim blandit volutpat maecenas volutpat. Mollis nunc sed id semper risus.',
              Icons.theaters),
          _tile(
              'Another Round',
              'Morbi tincidunt ornare massa eget egestas purus. Duis tristique sollicitudin nibh sit amet commodo nulla facilisi nullam.',
              Icons.theaters),
          _tile(
              'Godzilla vs. Kong',
              'Blandit turpis cursus in hac habitasse platea dictumst quisque. Interdum consectetur libero id faucibus nisl tincidunt eget nullam non.',
              Icons.theaters),
          _tile(
              'Mank',
              'Nibh ipsum consequat nisl vel pretium. Vestibulum lectus mauris ultrices eros in cursus. Viverra mauris in aliquam sem.',
              Icons.theaters),
          _tile(
              'Love and Monster',
              'Nunc mattis enim ut tellus elementum sagittis vitae et. At risus viverra adipiscing at in tellus integer feugiat.',
              Icons.theaters),
          _tile(
              'Minari',
              'Interdum varius sit amet mattis vulputate enim. Rhoncus est pellentesque elit ullamcorper. Eu sem integer vitae justo.',
              Icons.theaters),
          _tile(
              'Judas and the Black Messiah',
              'Ultricies mi quis hendrerit dolor magna eget est lorem. Volutpat maecenas volutpat blandit aliquam etiam erat velit scelerisque.',
              Icons.theaters),
          _tile(
              'The Virtuoso',
              'Tempor nec feugiat nisl pretium. Erat velit scelerisque in dictum.',
              Icons.theaters),
        ],
      );

  ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        subtitle: Text(subtitle),
        leading: Icon(
          icon,
          color: Colors.blue[500],
        ),
      );
}
