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
  void diceChangeFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1; //1 to 6
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                diceChangeFace();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                diceChangeFace();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

//class DicePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    var leftDiceNumber = 2;
//    return Center(
//      child: Row(
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//        children: <Widget>[
//          Expanded(
//            child: FlatButton(
//              onPressed: () {
//                print('Left Button Clicked');
//              },
//              child: Image.asset('images/dice$leftDiceNumber.png'),
//            ),
//          ),
//          Expanded(
//            child: FlatButton(
//              onPressed: () {
//                print('Right Button Clicked');
//              },
//              child: Image.asset('images/dice1.png'),
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}
