import 'package:flutter/material.dart';

class BottomNavigationChange extends StatefulWidget {
  BottomNavigationChange({super.key});

  @override
  State<BottomNavigationChange> createState() => _BottomNavigationChange();
}

class _BottomNavigationChange extends State<BottomNavigationChange> {
//------------ variable create
  String buttonName = 'click me';
  int curentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Title'),
        ),
        //main body part start from here

        body: Center(
          child: ElevatedButton(
            onPressed: () {
              //print('Someone Click me ');
              setState(
                () {
                  buttonName = 'Clicked';
                },
              );
            },
            child: Text(buttonName),
          ),
        ),

        //------------------- Button Create here

        // bottom navigation bar at the end
        bottomNavigationBar: BottomNavigationBar(
          items: const [
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
          ],
          currentIndex: curentIndex,
          onTap: (int index) {
            setState(() {
              curentIndex = index;
            });
          },
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
