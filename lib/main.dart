import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          title: Text('Ask Me Anything'),
        ),
        body: Balls(),
      ),
    ),
  );
}

class Balls extends StatefulWidget {
  @override
  _BallsState createState() => _BallsState();
}

class _BallsState extends State<Balls> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          onPressed: () {
            setState(() {
              ballNum = (Random().nextInt(5) + 1);
            });
          },
          child: Image.asset('images/ball$ballNum.png'),
        ),
      ),
    );
  }
}
