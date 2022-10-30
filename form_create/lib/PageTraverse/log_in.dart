import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Sala APP'),
        ),
        body: Column(children: [
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.all(30),
            width: 200,
            height: 300,
            color: Colors.amber,
          ),
          ElevatedButton(onPressed: () {}, child: Text('Click ME '))
        ]),
      ),
    );
  }
}
