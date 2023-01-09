import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String equtaion = "0";
  String result = "0";
  String expression = "";
  double equtaionFontSize = 38;
  double resultFonttSize = 48;

  buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        equtaion = "0";
        result = "0";
        equtaionFontSize = 38;
        resultFonttSize = 48;
      } else if (buttonText == "=") {
        equtaionFontSize = 38;
        resultFonttSize = 48;
        expression = equtaion;
        expression = expression.replaceAll('mX', '*');

        try {
          Parser p = Parser();
          Expression exp = p.parse(expression);
          ContextModel cm = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL, cm)}';
        } catch (e) {}
      } else if (buttonText == "x") {
        equtaionFontSize = 48;
        resultFonttSize = 38;
        equtaion = equtaion.substring(0, equtaion.length - 1);
        if (equtaion == "") {
          equtaion = "0";
        }
      } else {
        if (equtaion == "0") {
          equtaion = buttonText;
        } else {
          equtaion = equtaion + buttonText;
        }
      }
    });
  }

  Widget buildButton(
      String buttonText, double buttonHeight, Color buttonColor) {
    return Container(
      height: MediaQuery.of(context).size.height * .10 * buttonHeight,
      color: buttonColor,
      child: TextButton(
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 25),
        ),
        onPressed: () => buttonPressed(buttonText),
        style: TextButton.styleFrom(
            foregroundColor: Color.fromARGB(255, 17, 17, 17),
            elevation: 2,
            backgroundColor: buttonColor),
      ),
      padding: EdgeInsets.all(16),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simple Calculator")),
      body: Column(children: <Widget>[
        Container(
          alignment: Alignment.centerRight,
          padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
          child: Text(
            equtaion,
            style: TextStyle(fontSize: equtaionFontSize),
          ),
          color: Colors.amber,
        ),
        Divider(
          height: 20,
          thickness: 5,
        ),
        Container(
          alignment: Alignment.centerRight,
          padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
          child: Text(
            result,
            style: TextStyle(fontSize: resultFonttSize),
          ),
          color: Color.fromARGB(255, 16, 175, 210),
        ),
        Expanded(child: Divider()),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * .65,
              child: Table(
                border: TableBorder.all(width: 2),
                children: [
                  TableRow(
                    children: [
                      buildButton("C", 1, Colors.redAccent),
                      buildButton("x", 1, Color.fromARGB(255, 82, 114, 255)),
                      buildButton("/", 1, Color.fromARGB(255, 122, 255, 82)),
                    ],
                  ),
                  TableRow(
                    children: [
                      buildButton("7", 1, Color.fromARGB(255, 235, 229, 229)),
                      buildButton("8", 1, Color.fromARGB(255, 224, 225, 226)),
                      buildButton("9", 1, Color.fromARGB(255, 208, 213, 207)),
                    ],
                  ),
                  TableRow(
                    children: [
                      buildButton("4", 1, Color.fromARGB(255, 235, 229, 229)),
                      buildButton("5", 1, Color.fromARGB(255, 224, 225, 226)),
                      buildButton("6", 1, Color.fromARGB(255, 208, 213, 207)),
                    ],
                  ),
                  TableRow(
                    children: [
                      buildButton("1", 1, Color.fromARGB(255, 235, 229, 229)),
                      buildButton("2", 1, Color.fromARGB(255, 224, 225, 226)),
                      buildButton("3", 1, Color.fromARGB(255, 208, 213, 207)),
                    ],
                  ),
                  TableRow(
                    children: [
                      buildButton(".", 1, Color.fromARGB(255, 235, 229, 229)),
                      buildButton("0", 1, Color.fromARGB(255, 224, 225, 226)),
                      buildButton("00", 1, Color.fromARGB(255, 208, 213, 207)),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * .25,
              child: Table(
                border: TableBorder.all(width: 2),
                children: [
                  TableRow(children: [
                    buildButton("mX", 1, Colors.blueAccent),
                  ]),
                  TableRow(children: [
                    buildButton("+", 1, Colors.blueAccent),
                  ]),
                  TableRow(children: [
                    buildButton("-", 1, Colors.blueAccent),
                  ]),
                  TableRow(children: [
                    buildButton("=", 2, Colors.blueAccent),
                  ]),
                ],
              ),
            )
          ],
        )
      ]),
    );
  }
}
