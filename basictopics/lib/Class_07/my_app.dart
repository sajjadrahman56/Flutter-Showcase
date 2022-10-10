import 'package:basictopics/Class_07/hompage.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // primaryColor: AppColors.colorPrimary,
        // primaryColorDark: AppColors.colors.dark,
      ),
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
