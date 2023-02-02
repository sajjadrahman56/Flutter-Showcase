class Weather {
  dynamic cityName;
  dynamic temp;
  dynamic wind;
  dynamic pressure;
  dynamic humidity;
  // ignore: non_constant_identifier_names
  double? feels_like;

  Weather(
      {this.cityName,
      this.temp,
      this.wind,
      this.pressure,
      this.humidity,
      // ignore: non_constant_identifier_names
      this.feels_like});

  //now lests build a functions where the JSON file into the model

  Weather.fromJson(Map<String, dynamic> json) {
    cityName = json["name"];
    temp = json["main"]["temp"];
    wind = json["wind"]["speed"];
    pressure = json["main"]["pressure"];
    humidity = json["main"]["humidity"];
    feels_like = json["main"]["feels_like"];
  }
}
