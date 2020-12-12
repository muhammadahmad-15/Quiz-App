import 'package:Xylophone/question.dart';
import 'package:flutter/material.dart';
import 'package:Xylophone/answer.dart';
import './quiz.dart';
// import './answer.dart';
import './result.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  int _totalScore=0;
  final _questions = [
      {
        'questionText': 'What\'s your favourite color?',
        'answers' : [
          {'text':'Black','score':10},
          {'text':'Red','score':5},
          {'text':'Green','score':3},
          {'text':'White','score':1}
          ],
      },
      {
        'questionText': "What's your favourite animal?",
        'answers' : [
          {'text':'Rabbit','score':3},
          {'text':'Snake','score':11},
          {'text':'Elephant','score':5},
          {'text':'Lion','score':9}
          ], 
      },
      {
        'questionText' : 'Who\'s your favourite instructor?',
        'answers' : [
          {'text':'Max','score':1},
          {'text':'David','score':1},
          {'text':'John','score':1},
          {'text':'Arthur','score':1}
        ],
      },
    ];
  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }
  void _answerQuestion(int Score) {
    _totalScore += Score; 
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[600],
          title: Text('My first app'),
        ),
        body: _questionIndex < _questions.length
         ? Quiz(questions:_questions,questionIndex:_questionIndex,answerQuestion:_answerQuestion)
          : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
