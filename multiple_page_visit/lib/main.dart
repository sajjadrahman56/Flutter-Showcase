import 'package:flutter/material.dart';
import 'package:multiple_page_visit/app/routes/app_pages.dart';
import 'package:multiple_page_visit/app/routes/app_routes.dart';
import 'package:multiple_page_visit/app/ui/simple_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
      initialRoute: AppRoutes.HOME,
      routes: AppPages.routes,
    );
  }
}
