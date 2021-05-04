import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final showCard = false; // ubah ke false untuk melihat stack

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Stack | Card',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Layout Stack | Card'),
        ),
        body: Center(child: showCard ? _buildCard() : _buildStack()),
      ),
    );
  }

  Widget _buildCard() => SizedBox(
        height: 210,
        child: Card(
          child: Column(
            children: [
              ListTile(
                title: Text('Jalan Raya Jemursari 64',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                subtitle: Text('Surabaya, Jawa Timur'),
                leading: Icon(
                  Icons.restaurant_menu,
                  color: Colors.blue[500],
                ),
              ),
              Divider(),
              ListTile(
                title: Text('Jalan Raya Indrapura 15',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                leading: Icon(
                  Icons.contact_phone,
                  color: Colors.blue[500],
                ),
              ),
              ListTile(
                title: Text('info@email.com'),
                leading: Icon(
                  Icons.contact_mail,
                  color: Colors.blue[500],
                ),
              ),
            ],
          ),
        ),
      );

  Widget _buildStack() => Stack(
        alignment: const Alignment(0.6, 0.6),
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/pic.jpg'),
            radius: 100,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black45,
            ),
            child: Text(
              'Bee Gees',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          )
        ],
      );
}
