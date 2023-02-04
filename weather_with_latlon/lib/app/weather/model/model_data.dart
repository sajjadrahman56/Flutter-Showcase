import 'package:geolocator_platform_interface/src/models/position.dart';

class Weather {
  dynamic cityName;
  double? temp;
  dynamic visibility;
  dynamic pressure;
  dynamic humidity;
  dynamic sunrise;
  dynamic sunset;
  dynamic time;
  dynamic feels_like;
  dynamic description;
  dynamic wind;

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
      this.time,
      this.wind});

  //now lests build a functions where the JSON file into the model

  Weather.fromJson(Map<String, dynamic> json) {
    cityName = json["name"];
    temp = json["main"]["temp"];
    //visibility = json["visibility"];
    pressure = json["main"]["pressure"];
    humidity = json["main"]["humidity"];
    feels_like = json["main"]["feels_like"];
    sunrise = json["sys"]["sunrise"];
    sunset = json["sys"]["sunset"];
    time = json["timezone"];
    wind = json["wind"]["speed"];
  }
}
