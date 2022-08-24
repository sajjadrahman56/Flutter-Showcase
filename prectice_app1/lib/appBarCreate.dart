import 'package:flutter/material.dart';

class appBarCreate extends StatelessWidget {
  const appBarCreate({Key? key}) : super(key: key);

  // This widget is the root of your application.
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
        body: Container(),
      ),
      title: 'First practice app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
/* 
In this App bar i learn a lot things such as AppBar widgets  paremeter leading : title and Actions
actions is list inside it has Icon widgets , Padding 
*/