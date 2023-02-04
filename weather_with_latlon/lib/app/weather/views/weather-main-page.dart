// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import '../customise/cirularwaiting-widget.dart';
import '../customise/weather-front-page-widget.dart';
import '../model/model_data.dart';
import '../service/geo_location_enable_and_call.dart';
import '../service/services_into.dart';

Weather? data;
WeatherAPiLatLonPass client = WeatherAPiLatLonPass();

// ignore: non_constant_identifier_names

var lat, lon, timeDateSunRise, timeDateSunSet;

Future<void> getData() async {
  determinePosition();
  Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);

  lat = position.latitude;
  lon = position.longitude;
  data = await client.getCurrentWeatherInfoLatLon(lat, lon);

  timeDateSunSet = DateTime.fromMillisecondsSinceEpoch(data!.sunset * 1000);
  timeDateSunRise = DateTime.fromMillisecondsSinceEpoch(data!.sunrise * 1000);

  //print("\n\t********** inside of the second page ");
  //print("${data?.cityName}");print("\n\t**********lat = ${lat} **********lat = ${lon} ");
}

class WeatherMainPageView extends StatefulWidget {
  const WeatherMainPageView({super.key});

  @override
  State<WeatherMainPageView> createState() => _WeatherMainPageViewState();
}

class _WeatherMainPageViewState extends State<WeatherMainPageView> {
  @override
  void initState() {
    super.initState();
    client.getCurrentWeatherInfoLatLon(lat, lon);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CirularWidget();
        } else if (snapshot.connectionState == ConnectionState.done) {
          return Scaffold(
            body: weatherFrontPage("${data?.temp}", "${timeDateSunSet}",
                "${timeDateSunRise}", "${lat}", "${lon}", "${data?.wind}"),
          );
        } else {
          return Scaffold(
              body: Center(child: Text(snapshot.connectionState.toString())));
        }
      },
    );
  }
}
