import 'package:cerita_anak/first_page.dart';
import 'package:flutter/material.dart';
import 'package:cerita_anak/login.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cerita Anak'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(15, 70, 15, 0),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Aplikasi & Cerita Anak',
                style: TextStyle(fontSize: 35, decorationThickness: 5),
              ),
            ),
          ),
          Container(
            child: Image.asset(
              'assets/sikancil.png',
              width: 200,
              height: 350,
              fit: BoxFit.contain,
            ),
          ),
          Container(
            margin: EdgeInsets.all(40),
            child: FlatButton(
              child: Text(
                'Ayo Baca',
                style: TextStyle(fontSize: 25, decorationThickness: 1),
              ),
              color: Colors.deepOrange[600],
              textColor: Colors.black,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => first_page()));
              },
            ),
          ),
          FlatButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Login()));
              },
              child: Text(
                'Login',
                style: TextStyle(fontSize: 21),
              ))
        ],
      ),
    );
  }
}
