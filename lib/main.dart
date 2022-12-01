import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tubes_mobil/MyProfil.dart';
import 'MyProfil.dart';
import 'Tampilan_mobil.dart';

void main() {
  runApp(
    new MaterialApp(
      home: new Home(),
      routes: <String, WidgetBuilder>{
        '/page1': (BuildContext context) => new Home(),
        '/page2': (BuildContext context) => new MyProfil(),
        '/page3': (BuildContext context) => new Tampilanmobil(),
      },
    ),
  );
}

class Home extends StatelessWidget {
  String teks = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('LoveTravel'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.person_outline),
              onPressed: () {
                Navigator.pushNamed(context, '/page2');
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            new Container(
              child: Image.asset(
                'images/assets/lovetravel.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            new Container(
              padding: new EdgeInsets.all(50.0),
              child: new Column(
                children: <Widget>[
                  new TextField(
                    decoration: new InputDecoration(
                      hintText: 'Masukan Lokasi Anda Sekarang',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: ElevatedButton(
                onPressed: () {
                  var route = new MaterialPageRoute(
                    builder: (context) => Tampilanmobil(),
                  );
                  Navigator.of(context).push(route);
                },
                child: Text(
                  'Search',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
