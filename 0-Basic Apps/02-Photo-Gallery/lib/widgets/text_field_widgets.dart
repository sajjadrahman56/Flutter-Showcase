
import 'package:flutter/material.dart';

Widget textFieldWidget() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: TextField(
        decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      labelText: 'Search',
    )),
  );
}
