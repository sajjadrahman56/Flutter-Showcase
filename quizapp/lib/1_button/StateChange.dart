import 'package:flutter/material.dart';
import '../answer.dart';
import './question.dart';

class StateChange extends StatefulWidget {
  @override
  State<StateChange> createState() => _StateChangeState();
}

class _StateChangeState extends State<StateChange> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
      if (_questionIndex == 3) {
        _questionIndex % 4;
      }
    });
    print('Question : $_questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your name ',
      'who\'s your mother',
      'who\'s your father',
      'who\'s your brother'
    ];

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
              Column(
            children: <Widget>[
              /// QUESTION is class Stateless . I just uesed it instead of Text()
              Question(questions[_questionIndex]),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
              Answer(_answerQuestion)
              /* ElevatedButton(
                // here i onPressed:(){} replace by answerQuestion method
                onPressed: _answerQuestion,
                child: Text('Answer 1'),
              ),
              ElevatedButton(
                onPressed: _answerQuestion,
                child: Text('Answer 2'),
              ),
              ElevatedButton(
                // annonymous function no need to a name need for here. it no need define
                // good for use
                //
                onPressed: _answerQuestion,
                child: Text('Answer 3'),
              ),
              ElevatedButton(
                onPressed: _answerQuestion,
                child: Text(
                  'Answer 4 ',
                  style: TextStyle(fontSize: 14),
                ),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.red,
                  backgroundColor: Color.fromARGB(255, 42, 180, 49),
                  elevation: 20,
                  shadowColor: Colors.black, // button shadow add
                  side: BorderSide(
                      color: Colors.yellow, width: 5), // nice button broder
                ),
              ),*/
            ],
          )),
    );
  }
}
