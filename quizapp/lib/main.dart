import 'package:flutter/material.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = ['what\'s your name ', 'who\'s your mother'];

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
              Text('The Questions !! '),
              ElevatedButton(
                onPressed: () {},
                child: Text('Ansewe 1'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Ansewe 2'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Ansewe 3'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Ansewe 4',
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
              ),
            ],
          )),
    );
  }
}
