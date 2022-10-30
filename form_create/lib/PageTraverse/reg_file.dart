import 'package:flutter/material.dart';

class regForm extends StatelessWidget {
  const regForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Form(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            nameField(),
          ],
        ),
      ),
    ));
  }
}

Widget nameField() {
  return const TextField(
    maxLength: 114,
    decoration: InputDecoration(
      labelText: 'First Name',
      hintText: 'rahim karim',
      border: OutlineInputBorder(),
    ),
    //focusNode: ,
  );
}
