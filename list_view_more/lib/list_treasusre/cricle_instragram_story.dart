import 'package:flutter/material.dart';

class circlePost extends StatelessWidget {
  final String childText;
  const circlePost(this.childText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.pink[200],
        ),
        child: Center(
          child: Text(
            childText,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
