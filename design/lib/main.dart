// ignore_for_file: prefer_const_constructors

import 'package:design/app/views/weather_views.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/geo_test.dart';
import 'app/views/different-data-test/reciveFuture.dart';
import 'app/views/six_profile_page.dart';
import 'app/views/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'sajjad page design ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyGridScreen(), //WeatherPageViewsDifferent(),
      //MyGridScreen(), //ProfilePage() //GeoFunctionCall(), //ProfilePage(),
    );
  }
}

class GeoLoation extends StatefulWidget {
  const GeoLoation({super.key});

  @override
  State<GeoLoation> createState() => _GeoLoationState();
}

class _GeoLoationState extends State<GeoLoation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.amber,
          child: Text(" "),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/weather_page.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: 55,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 80,
                  width: 100,
                  //color: Colors.green,
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 50, left: 7),
                  height: 120,
                  width: 120,
                  //color: Color.fromARGB(255, 239, 242, 239),
                  child: Text(
                    "28",
                    style: TextStyle(
                        fontSize: 77, color: Color.fromARGB(255, 151, 37, 37)),
                  ),
                ),
                SizedBox(
                  width: 10,
                )
              ],
            ),
            Container(
              height: 160,
              width: 100,
              //color: Colors.green,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  ///sunrise container
                  padding: EdgeInsets.only(top: 21, left: 10),
                  height: 100,
                  width: 150,
                  child: Row(
                    children: [
                      Text(
                        "6:00",
                        style: TextStyle(
                          fontSize: 35,
                          color: Color.fromARGB(255, 23, 24, 23),
                          //backgroundColor:
                          // Color.fromARGB(255, 162, 173, 255)
                        ),
                      ),
                      Text(
                        " PM",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 12, 10, 10),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 120,
                ),
                Container(
                    padding: EdgeInsets.only(top: 21),

                    ///sunset container
                    height: 100,
                    width: 105,
                    //color: Color.fromARGB(255, 239, 242, 239),
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "6:00",
                            style: TextStyle(
                              fontSize: 35,
                              color: Color.fromARGB(255, 23, 24, 23),
                              //backgroundColor:
                              // Color.fromARGB(255, 162, 173, 255)
                            ),
                          ),
                        ),
                        Text(
                          " AM",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 12, 10, 10),
                          ),
                        ),
                      ],
                    )
                    // Text(
                    //   "6:00 am",
                    //   style: TextStyle(
                    //       fontSize: 77, color: Color.fromARGB(255, 151, 37, 37)),
                    // ),
                    ),
              ],
            ),
            SizedBox(
              height: 62,
            ),
            Container(
              padding: EdgeInsets.only(left: 95, top: 8),
              height: 40,
              width: 200,
              //color: Color.fromARGB(255, 76, 175, 96),
              child: Text(
                "12.9021",
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 12, 10, 10),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 95, top: 4),
              height: 40,
              width: 200,
              child: Text(
                "12.9021",
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 12, 10, 10),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 95, top: 4),
              height: 40,
              width: 200,
              child: Text(
                "12.9021",
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 12, 10, 10),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ]),
        ) /* add child content here */,
      ),
    );
  }
}
