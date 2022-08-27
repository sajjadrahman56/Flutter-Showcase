import 'package:flutter/material.dart';

class pictureAdd extends StatefulWidget {
  const pictureAdd({super.key});

  @override
  State<pictureAdd> createState() => _pictureAdd();
}

class _pictureAdd extends State<pictureAdd> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.assessment_rounded),
          title: Text('My First App'),
          actions: [
            Icon(Icons.favorite_border),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Icons.man),
            ),
            Icon(Icons.car_crash),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
            ),
          ],
          backgroundColor: Colors.pink,
        ),
        body: Container(
          margin: EdgeInsets.all(30),
          child: Image.asset('images/sa1.png'),
          alignment: Alignment.center,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255, 161, 102, 227),
          selectedItemColor: Color.fromARGB(255, 231, 237, 232),
          unselectedItemColor: Color.fromARGB(255, 75, 73, 70),
          selectedFontSize: 16,
          unselectedFontSize: 14,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favourite'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.handshake), label: 'Hand'),
          ],
          currentIndex: currentIndex,
          onTap: (int value) {
            setState(() {
              currentIndex = value;
            });
          },
        ),
      ),
      title: 'First practice app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
/* 
 
*/