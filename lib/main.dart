import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {

  final colors = [Colors.blue, Colors.red, Colors.green, Colors.orange, Colors.pink, Colors.teal, Colors.cyan];

  @override
  Widget build(BuildContext context) {

    final color = colors[Random().nextInt(7)];

    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: color[900],
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNo = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          child: Image.asset('images/ball$ballNo.png'),
          onPressed: (){
            setState(() {
              int temp = Random().nextInt(5)+1;
              while(temp == ballNo)
                temp = Random().nextInt(5)+1;
              ballNo = temp;
            });
          },
        ),
      ),
    );
  }
}
