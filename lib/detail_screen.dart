import 'package:cerita_anak/data_bacaan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailScreen extends StatelessWidget {
  // const DetailScreen({Key key}) : super(key: key);

  final Cerita cerita;
  DetailScreen({@required this.cerita});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(cerita.gambar),
            Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  cerita.judul,
                  style: TextStyle(fontSize: 25),
                )),
            Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  cerita.isi,
                  style: TextStyle(fontSize: 18),
                )),
          ],
        ),
      ),
    );
  }
}
