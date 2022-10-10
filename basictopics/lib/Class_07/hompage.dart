import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            color: Colors.amber,
          ),
          Card(
            color: Color.fromARGB(255, 205, 11, 205),
          ),
          Card(
            color: Color.fromARGB(255, 20, 20, 19),
          )
        ],
        shrinkWrap: true,
      ),
    );
  }
}
