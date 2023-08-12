import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: BallPage(),
  )
);

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Ask Me Anything',
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
       ),
      ),
      body: BallChange(),
    );
  }
}

class BallChange extends StatefulWidget{
  @override
  _BallChangeState createState() => _BallChangeState();
}

class _BallChangeState extends State<BallChange> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: (){
          setState(() {
            number = Random().nextInt(5)+1;
          });
        },
        child: Image.asset('images/ball$number.png'),
      )
    );
  }
}

