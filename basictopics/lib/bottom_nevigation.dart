import 'package:flutter/material.dart';

class bottom_nevigation extends StatelessWidget {
  const bottom_nevigation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Title'),
        ),
        //main body part start from here
        body: const Text(
            '\n\n Now i am in the main Body\nHere all the functions will be add '),

        // bottom navigation bar at the end
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(Icons.settings),
          ),
          BottomNavigationBarItem(
            label: 'Back',
            icon: Icon(Icons.back_hand),
          ),
        ]),
      ),
    );
  }
}
