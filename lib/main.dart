import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.indigoAccent,
          appBar: AppBar(
            title: Text('Ask me anything'),
            backgroundColor: Colors.indigo[900],
          ),
          body: BallPage(),
        ),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Ball();
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballFace = 1;
  int clickTimes = 0;

  void changeBall() {
    setState(() {
      ballFace = Random().nextInt(5) + 1;
      clickTimes++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: TextButton(
          onPressed: () {
            changeBall();
            print(
                'I got clicked ball number $ballFace, clicked $clickTimes times');
          },
          child: Image.asset(
            'images/ball$ballFace.png',
          ),
        ),
      ),
    );
  }
}
