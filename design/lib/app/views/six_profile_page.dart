import 'dart:ui';

import 'package:design/app/model/weather/model_data.dart';
import 'package:design/app/views/weather_views.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../services/api/weather-api/geo_location_enable_and_call.dart';
import '../services/api/weather-api/services_into.dart';
import 'different-data-test/another_page_main.dart';
import 'different-data-test/reciveFuture.dart';

class MyGridScreen extends StatefulWidget {
  MyGridScreen({super.key});

  @override
  _MyGridScreenState createState() => _MyGridScreenState();
}

class _MyGridScreenState extends State<MyGridScreen> {
  dynamic lat, lon, sunRise, sunSet, wind;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                SystemNavigator.pop();
              },
              icon: Icon(Icons.exit_to_app))
        ],
        title: Text("Flutter GridView Demo"),
        backgroundColor: Color.fromARGB(255, 71, 233, 248),
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          // ignore: unnecessary_new
          Expanded(
              child: GridView.extent(
            primary: false,
            padding: const EdgeInsets.all(14),
            crossAxisSpacing: 15,
            mainAxisSpacing: 40,
            maxCrossAxisExtent: 200.0,
            children: <Widget>[
              GestureDetector(
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/clouds_sun.png"),
                          fit: BoxFit.cover,
                          repeat: ImageRepeat.noRepeat,
                        ),
                      ),
                    ),
                    Text(
                      "weather",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
                onTap: () {
                  getLoca().then((value) {
                    lat = '${value.latitude}';
                    lon = '${value.longitude}';
                  });
                  //  getData(lat, lon);
                  setState(
                    () {
                      Get.to(secondaryMain());

                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => secondaryMain()));
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => WeatherPageViewsDifferent(
                      //               lat: lat,
                      //               lon: lon,
                      //               sunRise: sunRise,
                      //               sunSet: sunSet,
                      //               wind: wind,
                      //             )));
                    },
                  );
                },
              ),
              GestureDetector(
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/shelter.png"),
                            fit: BoxFit.cover,
                            repeat: ImageRepeat.noRepeat,
                          ),
                        ),
                      ),
                      Text(
                        "Shelter",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      // Get.to(MyHomePage(title: 'Flutter Demo Home Page'));
                    });
                  }),
              GestureDetector(
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/volunteer.png"),
                            fit: BoxFit.cover,
                            repeat: ImageRepeat.noRepeat,
                          ),
                        ),
                      ),
                      Text(
                        "Volunteer",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      // Get.to(MyHomePage(title: 'Flutter Demo Home Page'));
                    });
                  }),
              GestureDetector(
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/donation.png"),
                            fit: BoxFit.cover,
                            repeat: ImageRepeat.noRepeat,
                          ),
                        ),
                      ),
                      Text(
                        "Donation",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      //// Get.to(MyHomePage(title: 'Flutter Demo Home Page'));
                    });
                  }),
              GestureDetector(
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/news_portal.png"),
                            fit: BoxFit.cover,
                            repeat: ImageRepeat.noRepeat,
                          ),
                        ),
                      ),
                      Text(
                        "News Portal",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      //Get.to(MyHomePage(title: 'Flutter Demo Home Page'));
                    });
                  }),
              GestureDetector(
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/about_us.png"),
                            fit: BoxFit.cover,
                            repeat: ImageRepeat.noRepeat,
                          ),
                        ),
                      ),
                      Text(
                        "about us",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      //Get.to(MyHomePage(title: 'Flutter Demo Home Page'));
                    });
                  }),
            ],
          )),
          ElevatedButton(onPressed: () {}, child: Text("Log out")),
          SizedBox(
            height: 20,
          )
        ],
      )),
      backgroundColor: Color.fromARGB(248, 245, 245, 245),
    );
  }
}
