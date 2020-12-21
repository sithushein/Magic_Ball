import 'dart:math';

import 'package:flutter/material.dart';

//Magic Ball App
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Si Thu Shein'),
          centerTitle: true,
        ),
        body: MagicBallApp(),
      ),
    );
  }
}

class MagicBallApp extends StatefulWidget {
  @override
  _MagicBallAppState createState() => _MagicBallAppState();
}

class _MagicBallAppState extends State<MagicBallApp> {
  var magicballresult = 1;
  void magicballfunc() {
    setState(() {
      magicballresult = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                  magicballfunc();
                },
                child: Image.asset('images/ans$magicballresult.png')),
          ),
        ],
      ),
    );
  }
}
