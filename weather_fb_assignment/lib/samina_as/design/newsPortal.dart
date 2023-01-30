import 'package:flutter/material.dart';

// ignore: camel_case_types
class newsPortal extends StatelessWidget {
  const newsPortal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("News Portal"),
        backgroundColor: Colors.blue[700],
      ),
    );
  }
}
