
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea
      (
        child: Container(
          color: Colors.blue,
          child : Image(image : NetworkImage("https://www.freeimages.com/photo/dragonfly-1-1391160"),)
    ),);
  }
}
