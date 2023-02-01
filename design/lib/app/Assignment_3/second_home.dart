// import 'package:flutter/material.dart';

// import '../model/model_data.dart';
// import '../services/services_into.dart';
// import 'package:intl/intl.dart';
// import 'package:suntime/suntime.dart';

// TextStyle styleText = new TextStyle(fontSize: 18);

// class second_home extends StatefulWidget {
//   const second_home({super.key, required this.title});
//   final String title;

//   @override
//   State<second_home> createState() => _second_homeState();
// }

// class _second_homeState extends State<second_home> {
//   //DateTime now = DateTime.now();
//   String formattedTime =
//       DateFormat('E,d MMM yyyy HH:mm:ss').format(DateTime.now());

//   //var s =  DateFormat.yMMMd().add_jm().format(data!.sunrise);

//   final _cityName = ['Dhaka', 'Sylhet', 'Rajshahi', 'Barisal'];
//   String _selectValue = '';
//   // ignore: non_constant_identifier_names
//   String curent_location = "Dhaka";
//   String latitude = "28.8103";
//   String longitude = "99.4125";

//   WeatherAPiClinet client = WeatherAPiClinet();

//   @override
//   void initState() {
//     super.initState();
//     // button();
//     WeatherAPiClinet.getCurrentWeather1(28.8103, 99.4125);
//   }

//   Weather? data;
//   // ignore: non_constant_identifier_names
//   // Future<void> getData() async {
//   //   data = await client.getCurrentWeather1(
//   //       "28.8103", "99.4125"); // latitude = "23.8103";
//   //   //longitude = "90.4125";
//   //   print(data!.cityName);
//   // }
//   Widget button() {
//     return ElevatedButton(
//         child: Text("view weather"),
//         onPressed: () {
//           setState(() {
//             curent_location = _selectValue;
//             if (curent_location == "Dhaka") {
//               latitude = "23.8103";
//               longitude = "90.4125";
//             } else if (curent_location == "Sylhet") {
//               latitude = "24.8949";
//               longitude = "91.8687";
//             } else if (curent_location == "Rajshahi") {
//               latitude = "24.3745";
//               longitude = "88.6042";
//             } else if (curent_location == "Barisal") {
//               latitude = "22.7010"; //22.7010° N, 90.3535° E
//               longitude = "90.3535";
//             }
//             //WeatherAPiClinet.getCurrentWeather1(latitude, longitude);

//             //final _cityName = ['Dhaka', 'Sylhet', 'Rajshahi']
//           });
//         });
//   }
//   // here I want to call it

//   Future<void> getData() async {
//     //data = await WeatherAPiClinet.getCurrentWeather1(
//        // latitude, longitude); // latitude = "23.8103"//longitude = "90.4125";
//     // ignore: avoid_print
//     print(data!.cityName);
//   }

//   @override
//   // ignore: dead_code
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: SafeArea(
//         child: FutureBuilder(
//           future: getData(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.done) {
//               print("Sannp shot connection : ${snapshot.connectionState}");
//               //here we will display our data
//               return Column(children: [
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [drop_button(), button()],
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Text("${formattedTime}", style: styleText),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Container(
//                       margin: EdgeInsets.all(20),
//                       height: 80,
//                       width: 150,
//                       // decoration: BoxDecoration(
//                       //   color: Color.fromARGB(255, 202, 208, 217),
//                       // ),
//                       child: Center(
//                           child: Row(
//                         children: [
//                           Text(
//                             "${data!.temp}",
//                             style: TextStyle(fontSize: 45),
//                           ),
//                           SizedBox(
//                             width: 5,
//                           ),
//                           Text(
//                             "°C",
//                             style: TextStyle(fontSize: 20),
//                           ),
//                         ],
//                       )),
//                     ),
//                     SizedBox(
//                       width: 50,
//                     ),
//                     Container(
//                       child: Column(children: [
//                         Container(
//                             height: 70,
//                             width: 80,
//                             decoration: BoxDecoration(
//                               image: DecorationImage(
//                                 image: AssetImage('images/haze.png'),
//                                 fit: BoxFit.fill,
//                               ),
//                             )),
//                         Text("Haze"),
//                       ]),
//                     ),
//                   ],
//                 ),
//                 //location Dynamic send after edit
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   margin: EdgeInsets.only(left: 20, top: 10),
//                   child: Text(
//                     "${data!.cityName} , BD",
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ),
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   margin: EdgeInsets.only(left: 20, top: 30),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Row(
//                         children: [
//                           Text("Humidity   ", style: styleText),
//                           SizedBox(
//                             width: 15,
//                           ),
//                           Text("${data!.humidity}")
//                         ],
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Row(
//                         children: [
//                           Text("Pressure   ", style: styleText),
//                           SizedBox(
//                             width: 15,
//                           ),
//                           Text("${data!.pressure}")
//                         ],
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Row(
//                         children: [
//                           Text("Visibility   ", style: styleText),
//                           SizedBox(
//                             width: 15,
//                           ),
//                           Text("${data!.visibility}")
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 90),
//                 //Text("hi"),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Column(
//                       children: [
//                         SizedBox(
//                           width: 20,
//                         ),
//                         Text(" sunraise", style: styleText),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Container(
//                             //padding: EdgeInsets.only(left: 20),
//                             height: 70,
//                             width: 80,
//                             decoration: BoxDecoration(
//                               image: DecorationImage(
//                                 image: AssetImage('images/sunraise.png'),
//                                 fit: BoxFit.fill,
//                               ),
//                             )),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "${DateTime.fromMillisecondsSinceEpoch(data!.sunrise * 1000)}")
//                         //DateFormat.yMMMd().add_jm().format(data!.sunrise
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         SizedBox(
//                           width: 20,
//                         ),
//                         Text(" sunset", style: styleText),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Container(
//                             //padding: EdgeInsets.only(left: 20),
//                             height: 70,
//                             width: 80,
//                             decoration: BoxDecoration(
//                               image: DecorationImage(
//                                 image: AssetImage('images/sunset.png'),
//                                 fit: BoxFit.fill,
//                               ),
//                             )),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "${DateTime.fromMillisecondsSinceEpoch(data!.sunset * 1000)}")
//                         //"${DateFormat.yMMMd().add_jm().format()}")//DateFormat.yMMMd().add_jm().format(myDateTime);
//                       ],
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                   ],
//                 )
//               ]);
//             } else if (snapshot.connectionState == ConnectionState.waiting) {
//               return const Center(
//                 child: CircularProgressIndicator(),
//               );
//             } else if (snapshot.connectionState == ConnectionState.none) {
//               return const Center(
//                 child: Text("Misiing  weather"),
//               );
//             }
//             return Container(
//               child: Text("Hello Sakib tata "),
//             );
//           },
//         ),
//       ),
//     );
//   }

//   // ignore: non_constant_identifier_names
//   Widget drop_button() {
//     return DropdownButton(
//         value: _selectValue.isNotEmpty
//             ? _selectValue
//             : null, //_value1.isNotEmpty ? _value1 : null
//         items: _cityName.map((e) {
//           return DropdownMenuItem(
//             child: Text(e),
//             value: e,
//           );
//         }).toList(),
//         onChanged: (val) {
//           setState(() {
//             _selectValue = val!;
//           });
//         });
//   }

//   // Widget mainFrame( double temp,String city, int humidity, int pressure, int visibility) {
//   Widget mainFrame() {
//     return Column(
//       children: [
//         const SizedBox(
//           height: 10,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [drop_button(), button()],
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             SizedBox(
//               width: 20,
//             ),
//             Text("dateTime")
//           ],
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             SizedBox(
//               width: 20,
//             ),
//             Container(
//               margin: EdgeInsets.all(20),
//               height: 80,
//               width: 150,
//               // decoration: BoxDecoration(
//               //   color: Color.fromARGB(255, 202, 208, 217),
//               // ),
//               child: Center(
//                   child: Row(
//                 children: [
//                   Text(
//                     "temp",
//                     style: TextStyle(fontSize: 40),
//                   ),
//                   SizedBox(
//                     width: 5,
//                   ),
//                   Text(
//                     "°C",
//                     style: TextStyle(fontSize: 30),
//                   ),
//                 ],
//               )),
//             ),
//             SizedBox(
//               width: 50,
//             ),
//             Container(
//               child: Column(children: [
//                 Container(
//                     height: 70,
//                     width: 80,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage('images/haze.png'),
//                         fit: BoxFit.fill,
//                       ),
//                     )),
//                 Text("Haze"),
//               ]),
//             ),
//           ],
//         ),
//         //location Dynamic send after edit
//         Container(
//           alignment: Alignment.centerLeft,
//           margin: EdgeInsets.only(left: 20, top: 10),
//           child: Text(
//             "city , BD",
//             style: TextStyle(fontSize: 20),
//           ),
//         ),
//         Container(
//             alignment: Alignment.centerLeft,
//             margin: EdgeInsets.only(left: 20, top: 30),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Row(
//                   children: [
//                     Text("Humidity   "),
//                     SizedBox(
//                       width: 15,
//                     ),
//                     Text("humidity")
//                   ],
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Row(
//                   children: [
//                     Text("Pressure   "),
//                     SizedBox(
//                       width: 15,
//                     ),
//                     Text("pressure mBar")
//                   ],
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Row(
//                   children: [
//                     Text("Visibility   "),
//                     SizedBox(
//                       width: 15,
//                     ),
//                     Text("visibility KM")
//                   ],
//                 )
//               ],
//             )),
//       ],
//     );
//   }
// }
