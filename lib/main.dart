import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      //to hide debug banner set to false
      debugShowCheckedModeBanner: true,
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
  Image image1 = new Image.asset('images/dice1.png');
  Image image2 = new Image.asset('images/dice2.png');

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            //flex: 1,
            //LEFT BUTTON
            child: FlatButton(
              child: Image.asset('images/dice$leftNum.png'),
              onPressed: () {
                rollDiceLeft();
                //leftNum = randomNumber();
              },
            ),
          ),
          Expanded(
            //flex: 1,
            //RIGHT BUTTON
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rollDiceRight();
                  //rightNum = randomNumber();
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
    for (int i = 0; i < 5; i++) {
      setState(() {
        leftNum = randomNumber();
//        image1 = Image.asset('images/dice$leftNum.png');
//        print(image1);
      });
      sleep(const Duration(seconds: 1));
    }
  }

  Image setImage1() {
    return image1;
  }

  void rollDiceRight() {
    for (int i = 0; i < 5; i++) {
      rightNum = randomNumber();
      setState(() {
        image2 = Image.asset('images/dice$rightNum.png');
      });
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
