import 'package:calculator/calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BASIC CALCULATOR",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Calculator(),
    );
  }
}
