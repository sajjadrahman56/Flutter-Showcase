//to start call some http request in flutter we need to http pacakge

import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/model_data.dart';

class WeatherAPiClinet {
  Future<Weather>? getCurrentWeather1(String? lati, String? loni ) async {
    //insert your api 
    //var api =74e7c3a1e8f06f40b24cc4a81b032***  //hints=456kjld3a***
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?lat=$lati&lon=$loni&appid=$api&units=metric");
    var response = await http.get(endpoint);

    var body = jsonDecode(response.body);

    Weather weather = Weather.fromJson(body);

    print(weather.cityName);
    print(weather.temp);
    print(body);
    return Weather.fromJson(body);
  }
}
