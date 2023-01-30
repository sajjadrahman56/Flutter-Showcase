//to start call some http request in flutter we need to http pacakge

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/model_data.dart';

class WeatherAPiClinet {
  static Future<Weather>? getCurrentWeather1(double? lati, double? loni) async {
    //insert your api
    var api = "74e7c3a1e8f06f40b24cc4a81b032d3a"; //hints=456kjld3a***
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?lat=$lati&lon=$loni&appid=$api&units=metric");
    var response = await http.get(endpoint);

    var body = jsonDecode(response.body);

    Weather weather = Weather.fromJson(body);

    print("----------------------------------------------------\n");
    print(weather.cityName);
    print(weather.temp);

    print(body);
    //PrintNameOfData(weather.cityName, weather.temp);

    //return Weather.fromJson(body);
    return weather;
  }
}

Widget PrintNameOfData(dynamic cityName, dynamic temp) {
  return Scaffold(
    body: Center(
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
    ),
  );
}
