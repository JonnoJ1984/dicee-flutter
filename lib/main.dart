import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff455A64),
        appBar: AppBar(
          title: Text('Roll the dice!'),
          backgroundColor: Color(0xff607d8b),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          //flex: 1,
          child: Image.asset(
            'images/dice1.png',
          ),
        ),
        Expanded(
          //flex: 1,
          child: Image.asset(
            'images/dice2.png',
          ),
        )
      ],
    );
  }
}
