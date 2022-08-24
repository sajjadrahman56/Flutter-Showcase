import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First practice app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
    Scaffold(
      appBar: AppBar(
        title: Text('App Bar'),
      ),
    );
  }
}
