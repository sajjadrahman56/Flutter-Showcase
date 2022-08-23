import 'package:flutter/material.dart';

class secondPages extends StatefulWidget {
  secondPages({super.key});

  @override
  State<secondPages> createState() => _secondPages();
}

class _secondPages extends State<secondPages> {
//------------ variable create

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: anotherFirstPage(),
    );
  }
}

class anotherFirstPage extends StatefulWidget {
  const anotherFirstPage({super.key});

  @override
  State<anotherFirstPage> createState() => _anotherFirstPageState();
}

class _anotherFirstPageState extends State<anotherFirstPage> {
  @override
  Widget build(BuildContext context) {
    String buttonName = 'Press';
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Title'),
      ),
      //main body part start from here

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return const anotherPageMove();
                },
              ),
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
    );
  }
}

class anotherPageMove extends StatelessWidget {
  const anotherPageMove({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
