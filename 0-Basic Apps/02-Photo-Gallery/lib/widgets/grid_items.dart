import 'package:flutter/material.dart';
import '../body_part.dart';

Widget gridItemsWidgets(String imageLink, int index, BuildContext context) {
  return GestureDetector(
    child: Column(
      children: [
        Image.network(
          imageLink,
          height: 100,
          width: 120,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          "Photo $index",
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ],
    ),
    onTap: () {
      mySnackbar('Grid image no = $index', context);
    },
  );
}

