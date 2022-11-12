import 'package:flutter/material.dart';

import '../model/model_data.dart';
import '../services/services_into.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _cityName = ['Dhaka', 'Sylhet', 'Rajshahi', 'co'];
  String _selectValue = '';
  // ignore: non_constant_identifier_names
  String curent_location = "co";
  String latitude = "23.8103";
  String longitude = "90.4125";

  WeatherAPiClinet client = WeatherAPiClinet();

  @override
  void initState() {
    super.initState();
    // button();
    client.getCurrentWeather1("23.8103", "90.4125");
  }

  Weather? data;
  // ignore: non_constant_identifier_names
  Future<void> getData() async {
    data = await client.getCurrentWeather1(
        "23.8103", "90.4125"); // latitude = "23.8103";
    //longitude = "90.4125";
  }

  @override
  // ignore: dead_code
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            //here we will display our data
            mainFrame();
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.connectionState == ConnectionState.none) {
            return const Center(
              child: Text("Misiing  weather"),
            );
          }
          return Container(
            child: Text("Hello Sakib"),
          );
        },
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget drop_button() {
    return DropdownButton(
        value: _selectValue.isNotEmpty
            ? _selectValue
            : null, //_value1.isNotEmpty ? _value1 : null
        items: _cityName.map((e) {
          return DropdownMenuItem(
            child: Text(e),
            value: e,
          );
        }).toList(),
        onChanged: (val) {
          setState(() {
            _selectValue = val!;
          });
        });
  }

  Widget button() {
    return ElevatedButton(
        child: Text("view weather"),
        onPressed: () {
          setState(() {
            curent_location = _selectValue;
            if (curent_location == "Dhaka") {
              latitude = "23.8103";
              longitude = "90.4125";
            }
            //getData();

            //final _cityName = ['Dhaka', 'Sylhet', 'Rajshahi']
          });
        });
  }

  // Widget mainFrame( double temp,String city, int humidity, int pressure, int visibility) {
  Widget mainFrame() {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [drop_button(), button()],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 20,
            ),
            Text("dateTime")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 20,
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 80,
              width: 150,
              // decoration: BoxDecoration(
              //   color: Color.fromARGB(255, 202, 208, 217),
              // ),
              child: Center(
                  child: Row(
                children: [
                  Text(
                    "temp",
                    style: TextStyle(fontSize: 70),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "°C",
                    style: TextStyle(fontSize: 38),
                  ),
                ],
              )),
            ),
            SizedBox(
              width: 50,
            ),
            Container(
              child: Column(children: [
                Container(
                    height: 70,
                    width: 80,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/haze.png'),
                        fit: BoxFit.fill,
                      ),
                    )),
                Text("Haze"),
              ]),
            ),
          ],
        ),
        //location Dynamic send after edit
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(left: 20, top: 10),
          child: Text(
            "city , BD",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 20, top: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Text("Humidity   "),
                    SizedBox(
                      width: 15,
                    ),
                    Text("humidity")
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text("Pressure   "),
                    SizedBox(
                      width: 15,
                    ),
                    Text("pressure mBar")
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text("Visibility   "),
                    SizedBox(
                      width: 15,
                    ),
                    Text("visibility KM")
                  ],
                )
              ],
            )),
      ],
    );
  }
}
