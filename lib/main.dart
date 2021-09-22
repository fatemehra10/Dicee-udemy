import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
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
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: new Row(
        children: [
          new Expanded(
              child: TextButton(child: new Image.asset("images/dice$leftDiceNumber.png"),
                onPressed: (){
                setState(() {
                  leftDiceNumber = Random().nextInt(6)+1;
                });
                },)),
          new Expanded(
              child: TextButton(child: new Image.asset("images/dice$rightDiceNumber.png"),
                onPressed: (){
                setState(() {
                  rightDiceNumber = Random().nextInt(6)+1;
                });
                },
              ),
          ),
        ],
      ),
    );
}

}
