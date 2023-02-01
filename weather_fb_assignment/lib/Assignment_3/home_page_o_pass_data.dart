import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePageDataPass extends StatelessWidget {
  var lat, lon;

  HomePageDataPass({required this.lat, required this.lon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("title in home page "),
        ),
        body: PrintNameOfData(lat, lon));
  }

  Widget PrintNameOfData(dynamic cityName, dynamic temp) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.amber,
            child: Text("${cityName}"),
          ),
          SizedBox(
            height: 100,
            width: 100,
          ),
          Container(
            height: 100,
            width: 100,
            color: Color.fromARGB(255, 185, 25, 179),
            child: Text("${temp}"),
          ),
        ],
      ),
    );
  }
}
