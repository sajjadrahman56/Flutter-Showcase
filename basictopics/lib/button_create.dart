import 'package:flutter/material.dart';

class button_create extends StatefulWidget {
  button_create({super.key});

  @override
  State<button_create> createState() => _button_createState();
}

class _button_createState extends State<button_create> {
//------------ variable create
  String buttonName = 'click me';

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

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
