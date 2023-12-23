import 'package:flutter/material.dart';
import 'widgets/grid_items.dart';
import 'widgets/list_item_widgets.dart';
import 'widgets/text_field_widgets.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
      ], title: const Text('Home Page')),
      body: BodyPart(),
    );
  }
}
// ignore: must_be_immutable
class BodyPart extends StatelessWidget {
  BodyPart({super.key});
  List<String> images = [
    'https://tinyurl.com/yeywese',
    'https://picsum.photos/250?image=9',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          _verticalGap(15),
          _welcomeTextMessage('Welcome to Photo Gallery !'),
          _verticalGap(20),
          textFieldWidget(),
          _verticalGap(15),
          SingleChildScrollView(
            child: Container(
              height: 270,
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                crossAxisSpacing: 1,
                mainAxisSpacing: 5,
                children: [
                  for (var i = 0; i < 10; i++)
                    i % 2 == 0
                        ? gridItemsWidgets(images[0], i + 1, context)
                        : gridItemsWidgets(images[1], i + 1, context),
                ],
              ),
            ),
          ),
          _verticalGap(10),
          SingleChildScrollView(
            child: Container(
              height: 210,
              child: ListView(
                children: [
                  for (var i = 0; i < 10; i++)
                    i % 2 == 0
                        ? listItemsWidgets(images[1], i + 1, context)
                        : listItemsWidgets(images[0], i + 1, context),
                ],
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: () {
                  mySnackbar('Image Upload Sucessfull', context);
                },
                child: const Icon(
                  Icons.upload_rounded,
                  size: 50,
                  color: Colors.blue,
                ),
              )),
        ],
      ),
    ));
  }
}

Widget _welcomeTextMessage(String Message) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Text(
      "$Message                 ",
      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    ),
  );
}

Widget _verticalGap(double n) {
  return SizedBox(
    height: n,
  );
}
mySnackbar(message, context) {
  return ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text('$message')));
}
