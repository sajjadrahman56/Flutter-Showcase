import 'package:flutter/material.dart';
import 'package:list_view_more/list_treasusre/squre_widget.dart';

import 'cricle_instragram_story.dart';

class list_view extends StatelessWidget {
  const list_view({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> post = ['sajr', 'mak', 'beng', 'non'];
    List<String> story = ['s1', 's2', 's3', 's4'];
    return Scaffold(
      body: Column(children: [
        Container(
          height: 200,
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return circlePost(story[index]);
            },
          ),
        ),
        Expanded(
          flex: 4,
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return square(post[index]);
            },
          ),
        ),
      ]),
    );
  }
}
