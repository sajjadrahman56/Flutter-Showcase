import 'package:flutter/material.dart';
import 'dart:convert';

import 'app/services/latAndlod.dart';
import 'app/views/copy-main.dart';
import 'app/views/district-profile.dart';
import 'app/views/weather-from-syl.dart';
import 'doctor_code/main_page_doctor_code_app.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.cyan,
        ),
        home: AhaAha(),
        routes: {"first": (context) => MyGridScreen()} //con
        );
    //st main_page_doctor_code());
  }
}

class AhaAha extends StatelessWidget {
  const AhaAha({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, "first");
        },
        child: Text("click me "),
      ),
    );
  }
}
