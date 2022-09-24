import 'package:flutter/material.dart';
import 'package:quizapp/quiz.dart';

import '../result.dart';

class StateChange extends StatefulWidget {
  @override
  State<StateChange> createState() => _StateChangeState();
}

class _StateChangeState extends State<StateChange> {
  final _questions = const [
    {
      'questionText': 'what\'s your name ',
      'answer': ['Ami', 'Tumi', 'she', 'he'],
    },
    {
      'questionText': 'who\'s your mother',
      'answer': ['Black 44', 'Red 44 ', 'Green 44', 'White 44'],
    },
    {
      'questionText': 'who\'s your father',
      'answer': ['Rafiq', 'Sami', 'Galib', 'Nayeem'],
    },
    {
      'questionText': 'who\'s your brother',
      'answer': ['jobbar', 'karim', 'goffar', 'hehe'],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
      // if (_questionIndex == 3) {
      //   _questionIndex % 4;
      // }
    });
    print('Question : $_questionIndex');
    if (_questionIndex < _questions.length) {
      print("we have more questions");
    } else
      print("No more questions");
  }

  @override
  Widget build(BuildContext context) {
    /// though it is scope for this {} but i also want to count golobally index
    /// such as when I reach last index , I could not get CRASH the app

    // const questions = [
    //   {
    //     'questionText': 'what\'s your name ',
    //     'answer': ['Ami', 'Tumi', 'she', 'he'],
    //   },
    //   {
    //     'questionText': 'who\'s your mother',
    //     'answer': ['Black 44', 'Red 44 ', 'Green 44', 'White 44'],
    //   },
    //   {
    //     'questionText': 'who\'s your father',
    //     'answer': ['Rafiq', 'Sami', 'Galib', 'Nayeem'],
    //   },
    //   {
    //     'questionText': 'who\'s your brother',
    //     'answer': ['jobbar', 'karim', 'goffar', 'hehe'],
    //   },
    // ];

    //if i return MaterialApp at first I should mention home paremeter
    // In the home if i want to see something I shhould mention Scaffold() on the
    //home
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                  height: 2,
                  fontSize: 18)),
        ),
        body:
            // for styling text color we use Text widets inside TextStyle
            //TestStyle widgtes whose paremeter is style :
            // Text('This is my body', style: TextStyle(height: 3, fontSize: 44)),
            _questionIndex < _questions.length
                ? Quiz(
                    answerQuestions: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions,
                  )
                : Result(),
      ),
    );
  }
}
