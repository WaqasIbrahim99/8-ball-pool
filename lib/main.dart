import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(

    home: Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('My Magic ball App'),
        backgroundColor: Colors.blue,
      ),
      body: magic8ball(),
    ),
  ));
}
class magic8ball extends StatefulWidget {

  @override
  _magic8ballState createState() => _magic8ballState();
}

class _magic8ballState extends State<magic8ball> {
  int ballNumber=1;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: FlatButton(onPressed: () {
        setState(() {
         ballNumber=Random().nextInt(5)+1;
          print("button is pressed: $ballNumber");
        });
      }, child: Image.asset('images/ball$ballNumber.png'),),),
      ],);
  }
}
