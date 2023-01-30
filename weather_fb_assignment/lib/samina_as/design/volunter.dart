// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class mediaquerry extends StatelessWidget {
  const mediaquerry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Volunteer"),
        backgroundColor: Colors.blue[700],
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .02,
            color: Colors.white,
          ),
          Container(
            height: MediaQuery.of(context).size.height * .07,
            child: Row(children: [
              SizedBox(
                height: 5,
                width: 5,
              ),
              Container(
                height: 160.0,
                width: 50.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://thumbs.dreamstime.com/b/blue-map-pointer-symbol-map-pointer-symbol-isolated-white-background-134934966.jpg'),
                      fit: BoxFit.contain),
                ),
              ),
              SizedBox(
                height: 10,
                width: 10,
              ),
              Container(
                height: 35,
                width: 220,
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1.3, color: Colors.blue),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
                width: 10,
              ),
              Container(
                height: 35,
                width: 80,
                child: TextFormField(
                  autocorrect: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.blue[400],
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1.3, color: Colors.blue),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
