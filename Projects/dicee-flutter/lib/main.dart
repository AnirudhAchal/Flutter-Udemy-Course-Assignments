import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.black,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftImageNumber = 1;
  int rightImageNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftImageNumber = Random().nextInt(6) + 1;
      rightImageNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              padding: EdgeInsets.all(16.0),
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('images/dice$leftImageNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              padding: EdgeInsets.all(16.0),
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('images/dice$rightImageNumber.png'),
            ),
          )
        ],
      ),
    );
  }
}