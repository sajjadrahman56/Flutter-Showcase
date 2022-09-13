import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selecHandeler;

  Answer(this.selecHandeler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Color.fromARGB(255, 204, 17, 17),
          backgroundColor: Color.fromARGB(255, 42, 180, 49),
          textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        child: Text('Answer 1'),
        onPressed: selecHandeler,
      ),
    );
  }
}
