import 'package:geolocator_platform_interface/src/models/position.dart';

class Weather {
  String? cityName;
  double? temp;
  int? visibility;
  int? pressure;
  int? humidity;
  dynamic sunrise = 1;
  dynamic sunset = 1;
  int? time;
  // ignore: non_constant_identifier_names
  double? feels_like;
  String? description;

  Weather(
      {this.cityName,
      this.temp,
      this.visibility,
      this.pressure,
      this.humidity,
      // ignore: non_constant_identifier_names
      this.feels_like,
      required this.sunrise,
      required this.sunset,
      this.description,
      this.time});

  //now lests build a functions where the JSON file into the model

  Weather.fromJson(Map<String, dynamic> json) {
    cityName = json["name"];
    temp = json["main"]["temp"];
    visibility = json["visibility"];
    pressure = json["main"]["pressure"];
    humidity = json["main"]["humidity"];
    feels_like = json["main"]["feels_like"];
    sunrise = json["sys"]["sunrise"];
    sunset = json["sys"]["sunset"];

    time = json["timezone"];
  }
}
