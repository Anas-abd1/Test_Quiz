import 'package:flutter/material.dart';

import './Result.dart';
import 'Quiz.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'In what continent tunisia does exsit ?',
      'answer': [
        {'text': 'Africa', 'score': 5},
        {'text': 'Europe', 'socre': 0},
        {'text': 'Asie', 'socre': 0},
        {'text': 'Austriale', 'socre': 0},
      ],
    },
    {
      'questionText': 'In what continent Egypt does exsit ?',
      'answer': [
        {'text': 'America', 'score': -1},
        {'text': 'Europe', 'socre': -3},
        {'text': 'Africa', 'score': 5},
        {'text': 'Austriale', 'socre': -2},
      ],
    },
    {
      'questionText': 'How many country in the world ?',
      'answer': [
        {'text': '293', 'score': -3},
        {'text': '194', 'score': -1},
        {'text': '255', 'score': -2},
        {'text': '195', 'score': 5},
      ],
    },
    {
      'questionText': 'How many continent in the world ?',
      'answer': [
        {'text': '5', 'score': -3},
        {'text': '6', 'score': -1},
        {'text': '7', 'score': 5},
        {'text': '8', 'score': -1},
      ],
    },
  ];
  var _questionIndex = 0;
  var _ttscore = 0;
  void _reset() {
    setState(() {
      _ttscore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    _ttscore += score;

    if (_questionIndex < _questions.length) {
      print("you can do more !");
    } else {
      print("great you did it  ");
    }
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                '---Quiz---',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                ),
              ),
            ),
            backgroundColor: Colors.white,
          ),
          backgroundColor: Colors.blue[200],
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex)
              : Result(_ttscore, _reset)),
    );
  }
}
