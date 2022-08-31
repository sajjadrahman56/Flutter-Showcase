import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //if i return MaterialApp at first I should mention home paremeter
    return MaterialApp(
      home: Text(" Amigo SaS we are here "),
    );
  }
}
