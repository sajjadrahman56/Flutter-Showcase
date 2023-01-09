import 'package:flutter/material.dart';
import 'package:portfolio/pogram_file.dart';
import 'class_time/cla_02.dart';
import 'class_time/class_01.dart';
import 'class_time/profile_03.dart';
import 'learning_part/row_column.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primarySwatch: Colors.purple),
//       home: RowCol_11(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/login.jpg"),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text('Backgroung Image practice'),
            leading: Icon(
              Icons.menu,
            ),
          ),
        ),
      ),
    );
  }
}
