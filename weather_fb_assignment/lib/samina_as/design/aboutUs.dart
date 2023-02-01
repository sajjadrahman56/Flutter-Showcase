import 'package:flutter/material.dart';

// ignore: camel_case_types
class aboutUs extends StatelessWidget {
  const aboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("About Us"),
        backgroundColor: Colors.blue[700],
      ),
    );
  }
}
