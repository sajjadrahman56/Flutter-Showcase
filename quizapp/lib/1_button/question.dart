import 'package:flutter/cupertino.dart';

class Question extends StatelessWidget {
  String qustionText;
  Question(this.qustionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        qustionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
