import 'package:flutter/material.dart';

import 'Assignment_3/home_page.dart';
import 'Assignment_3/second_home.dart';
import 'services/geo_location_get.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: GeoFunctionCall(),
    );
  }
}
