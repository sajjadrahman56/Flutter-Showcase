import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String qustionText;
  Question(this.qustionText);

  @override
  Widget build(BuildContext context) {
    //A Container class can be used to store one or more widgets and position them on the screen
    //according to our convenience.
    //A basic container element that stores a widget has a margin,
    //which separates the present container from other contents.
    //The total container can be given a border of different shapes,
    //for example, rounded rectangles, etc.
    //A container surrounds its child with padding and
    //then applies additional constraints to the padded extent

    return Container(
      //all of peremter about CONTAINER
      height: 80,
      width: double.infinity,
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      color: Colors.purple,
      child: Text(
        qustionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
