import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/model_data.dart';

class WeatherAPiLatLonPass {
  Future<Weather>? getCurrentWeatherInfoLatLon(
      dynamic lati, dynamic loni) async {
    var api = "74e7c3a1e8f06f40b24cc4a81b032d3a"; //hints=456kjld3a***

    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?lat=$lati&lon=$loni&appid=$api&units=metric");

    var response = await http.get(endpoint);

    var body = jsonDecode(response.body);

    Weather weather = Weather.fromJson(body);

    //print("-----------------\n"); print(weather.cityName);print(body);
    return weather;
  }
}
// https://api.openweathermap.org/data/2.5/weather?lat=24.897265&lon=91.9022967&appid=74e7c3a1e8f06f40b24cc4a81b032d3a&units=metric