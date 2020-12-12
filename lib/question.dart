import 'dart:ui';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container( 
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
      questionText,
      style: TextStyle(
        fontSize: 28,
      ),
      textAlign: TextAlign.center,
    ),);
  }
}
