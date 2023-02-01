// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:design/app/services/api/weather-api/geo_location_enable_and_call.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WeatherPageViewsDifferent extends StatefulWidget {
  dynamic lat, lon, sunRise, sunSet, wind;
  WeatherPageViewsDifferent({
    required this.lat,
    required this.lon,
    required this.sunRise,
    required this.sunSet,
    required this.wind,
  });
  @override
  State<WeatherPageViewsDifferent> createState() =>
      _WeatherPageViewsDifferentState();
}

class _WeatherPageViewsDifferentState extends State<WeatherPageViewsDifferent> {
  @override
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getLoca(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.connectionState == ConnectionState.done) {
            return Scaffold(
              body: weatherFrontPage(widget.lat, widget.lon, widget.sunRise,
                  widget.sunSet, widget.wind),
            );
          } else {
            return Scaffold(body: Text(snapshot.connectionState.toString()));
          }
        });
    // return Scaffold(
    //   body: weatherFrontPage(widget.lat, widget.lon),
    // );
  }

  Widget weatherFrontPage(
      dynamic lat, dynamic lon, dynamic sunRise, dynamic sunSet, dynamic wind) {
    return Container(
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
                      "4",
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
                          "5",
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
            width: 250,
            //color: Color.fromARGB(255, 76, 175, 96),
            child: Text(
              "${lat}",
              style: TextStyle(
                fontSize: 22,
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
            width: 250,
            child: Text(
              "${lon}",
              style: TextStyle(
                fontSize: 22,
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
            width: 250,
            child: Text(
              "${wind}",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 12, 10, 10),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ]),
      ) /* add child content here */,
    );
  }
}
