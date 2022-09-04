import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondAppBar extends StatelessWidget {
  const SecondAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.people),
          leadingWidth: 50,
          toolbarHeight: 70,
          toolbarOpacity: 0.8,
          title: Text("Amigo"),
          actions: [
            IconButton(
              tooltip: 'Ami Kala',
              splashRadius: 20,
              splashColor: Color.fromARGB(255, 16, 15, 15),
              padding: EdgeInsets.zero,
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text("this is me")));
              },
              icon: Icon(
                Icons.man,
                size: 40,
              ),
              color: Colors.red,
            ),
            IconButton(
              tooltip: 'Ami Nil',
              splashRadius: 20,
              splashColor: Color.fromARGB(255, 16, 15, 15),
              padding: EdgeInsets.zero,
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text("this is me")));
              },
              icon: Icon(
                Icons.man,
                size: 40,
              ),
              color: Color.fromARGB(255, 83, 9, 201),
            ),
            IconButton(
              tooltip: 'Ami kala',
              splashRadius: 20,
              splashColor: Color.fromARGB(255, 16, 15, 15),
              padding: EdgeInsets.zero,
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text("no me")));
              },
              icon: Icon(
                Icons.man,
                size: 40,
              ),
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ],
        ),
      ),
    );
  }
}
