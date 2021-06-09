import 'dart:async';

import 'package:flutter/material.dart';
import 'package:cerita_anak/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cerita dan Dongeng Anak',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SecondScreen())));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
       color: Colors.white,
      //  child: FlutterLogo(size: MediaQuery.of(context).size.height,),
      child: Image.asset('assets/istana.png', width: MediaQuery.of(context).size.width,),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}
