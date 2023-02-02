import 'package:design/app/old-design/current_weather_get.dart';
import 'package:design/app/old-design/weather_clint.dart';
import 'package:design/app/old-design/weather_model.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

import '../../old-design/additonal_info.dart';
import '../../services/api/weather-api/geo_location_enable_and_call.dart';

Weather? data;
WeatherAPiClinet client = WeatherAPiClinet();

// ignore: non_constant_identifier_names

var lat, lon;

Future<void> getData() async {
  determinePosition();
  Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);

  lat = position.latitude;
  lon = position.longitude;
  data = await client.getCurrentWeather(lat, lon);

  print("\n\t********** inside of the second page ");
  print("${data?.cityName}");
  print("\n\t**********lat = ${lat} ");

  print("\n\t**********lat = ${lon} ");
}

// ignore: camel_case_types
class secondaryMain extends StatefulWidget {
  const secondaryMain({super.key});

  @override
  State<secondaryMain> createState() => _secondaryMainState();
}

// ignore: camel_case_types
class _secondaryMainState extends State<secondaryMain> {
  // now lets test if everything is working
  // we call api in the hare working

  // ALhamdullilah everything is working now
  //but we will use a better method to call api
  //FutureBuilder

  @override
  void initState() {
    super.initState();
    print(
        "\t%%%%%%%%%before%%%%%%%%%%%%% inside the initi app = lat = ${lat} and lan = ${lon}");
    client.getCurrentWeather(lat, lon);
    print(
        "\t%%%%%%%%%%%after%%%%%%%%%%% inside the initi app = lat = ${lat} and lan = ${lon}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf9f9f9),
      appBar: AppBar(
        backgroundColor: const Color(0xFFf9f9f9),
        elevation: 0.0,
        title: const Text(
          "Weather app test ",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          color: Colors.black,
        ),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            //here we will display our data
            return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  currentWeather(Icons.wb_sunny_rounded, "${data?.temp} °C",
                      "${data?.cityName}"),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(" hahhahaha "),
                  // style: TextStyle(fontSize: 21)),
                  const Divider(),
                  additionalInformation("${data?.wind}", "${data?.humidity}",
                      "${data?.pressure}", "${data?.feels_like}"),
                  // now API Connections Established
                ]);
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.connectionState == ConnectionState.none) {
            return const Center(
              child: Text("Misi weather"),
            );
          }
          return Container();
        },
      ),
    );
  }
}
