import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      //to hide debug banner set to false
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff455A64),
        appBar: AppBar(
          title: Center(
            child: Text('Roll the dice!'),
          ),
          backgroundColor: Color(0xff607d8b),
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
  //variables for dice
  int leftNum = 1;
  int rightNum = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            //flex: 1,
            //LEFT BUTTON
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftNum = randomNumber();
                });
              },
              child: Image.asset('images/dice$leftNum.png'),
            ),
          ),
          Expanded(
            //flex: 1,
            //RIGHT BUTTON
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightNum = randomNumber();
                });
              },
              child: Image.asset('images/dice$rightNum.png'),
            ),
          )
        ],
      ),
    );
  }

  //roll Dice Animation
  void rollDiceLeft() {
    for (int i = 0; i < 10; i++) {
      leftNum = randomNumber();
      sleep(const Duration(seconds: 1));
    }
  }

  //Random Number Dice Generator
  int randomNumber() {
    Random rand = new Random();
    int min = 1;
    int max = 7;
    int result = min + rand.nextInt(max - min);
    print(result);
    return result;
  }
}
