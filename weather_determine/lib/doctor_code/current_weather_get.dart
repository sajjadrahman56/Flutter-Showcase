import 'package:flutter/material.dart';
import 'package:weather_determine/doctor_code/additonal_info.dart';

Widget currentWeather(IconData icon, String temp, String location) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.orange,
          size: 64.0,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "$temp",
          style: TextStyle(fontSize: 46),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "$location",
          style: TextStyle(fontSize: 26),
        ),
        Divider(),
        SizedBox(height: 20.0),

        //Now create addidtional infromation widegts
        // first create model that soret the data
      ],
    ),
  );
}
