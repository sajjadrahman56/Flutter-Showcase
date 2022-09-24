import 'package:flutter/material.dart';

import '1_button/question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestions;

  Quiz(
      {@required this.questions,
      @required this.answerQuestions,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        /// QUESTION is class Stateless . I just uesed it instead of Text()
        Question(
          questions[questionIndex]['questionText'],
        ),

        ///... three dot call  wrap
        ...(questions[questionIndex]['answer'] as List<String>).map((answer) {
          return Answer(answerQuestions, answer);
        }).toList()

        // Answer(_answerQuestion),
        // Answer(_answerQuestion),
        // Answer(_answerQuestion),
        // Answer(_answerQuestion)
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
    );
  }
}
