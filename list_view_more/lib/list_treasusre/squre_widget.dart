import 'package:flutter/material.dart';

class square extends StatelessWidget {
  final String child;

  const square(this.child);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
          height: 400,
          color: Color.fromARGB(255, 12, 216, 59),
          child: Text(
            child,
            style: TextStyle(fontSize: 18),
          )),
    );
  }
}
