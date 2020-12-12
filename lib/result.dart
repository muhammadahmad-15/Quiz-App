import 'dart:ui';

import 'package:flutter/material.dart';
import './main.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome & innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 18) {
      resultText = 'You are .... strange!';
    } else {
      resultText = 'You are bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 28, 
              fontWeight: FontWeight.bold,
              ),
          ),
          FlatButton(
            padding: EdgeInsets.all(30),
            child: Text("Restart Quiz!"),
            textColor: Colors.blue, 
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
