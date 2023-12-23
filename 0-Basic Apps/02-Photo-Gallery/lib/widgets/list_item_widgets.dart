import 'package:flutter/material.dart';
import 'package:google_map_test/body_part.dart';

Widget listItemsWidgets(String imageLink, int index, BuildContext context) {
  return GestureDetector(
    child: ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(
            '$imageLink'), // no matter how big it is, it won't overflow
      ),
      title: Text('Watermelon'),
      subtitle: Text('I am cat'),
    ),
    onTap: () {
      mySnackbar('List image no = $index', context);
    },
  );
}