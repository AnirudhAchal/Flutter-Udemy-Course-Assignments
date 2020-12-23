import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black54,
          title: Text('Magic 8 Ball'),
        ),
        backgroundColor: Colors.cyan,
        body: MagicBallPage(),
      ),
    ),
  );
}

class MagicBallPage extends StatefulWidget {
  @override
  _MagicBallPageState createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  int imageNumber = 1;

  void changeMagicBallFace() {
    setState(() {
      imageNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              padding: EdgeInsets.all(16),
              onPressed: () {
                changeMagicBallFace();
              },
              child: Image(
                image: AssetImage('images/ball$imageNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
