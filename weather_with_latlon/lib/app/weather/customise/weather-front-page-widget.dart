import 'package:flutter/material.dart';

Widget weatherFrontPage(dynamic temp, dynamic timeDateSunSet,
    dynamic timeDateSunRise, dynamic lat, dynamic lon, dynamic wind) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/new-weather.png"),
        fit: BoxFit.cover,
      ),
    ),
    child: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizeBox(55.0, 0.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 80,
              width: 100,
              //color: Colors.green,
            ),
            SizeBox(0.0, 20.0),
            Container(
              padding: EdgeInsets.only(bottom: 50, left: 7),
              height: 120,
              width: 120,
              //color: Color.fromARGB(255, 239, 242, 239),
              child: Text(
                "${temp}",
                style: TextStyle(
                    fontSize: 77, color: Color.fromARGB(255, 151, 37, 37)),
              ),
            ),
            SizeBox(10.0, 0.0),
          ],
        ),
        Container(
          height: 140,
          width: 300,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              alignment: Alignment.center,
              width: 100,
              child: Text("Sun Rise \n\n${timeDateSunRise}"),
            ),
            SizeBox(60.0, 0.0),
            Container(
              alignment: Alignment.center,
              width: 100,
              child: Text("Sun Set \n\n${timeDateSunSet}"),
            )
          ]),
          //color: Colors.green,
        ),
        SizeBox(182.0, 0.0),
        Container(
          padding: EdgeInsets.only(left: 95, top: 8),
          height: 40,
          width: 250,
          //color: Color.fromARGB(255, 76, 175, 96),
          child: Text(
            "${lat}",
            style: TextStyle(
              fontSize: 22,
              color: Color.fromARGB(255, 12, 10, 10),
            ),
          ),
        ),
        SizeBox(10.0, 0.0),
        Container(
          padding: EdgeInsets.only(left: 95, top: 4),
          height: 40,
          width: 250,
          child: Text(
            "${lon}",
            style: TextStyle(
              fontSize: 22,
              color: Color.fromARGB(255, 12, 10, 10),
            ),
          ),
        ),
        SizeBox(10.0, 0.0),
        Container(
          padding: EdgeInsets.only(left: 95, top: 4),
          height: 40,
          width: 250,
          child: Text(
            "${wind}",
            style: TextStyle(
              fontSize: 22,
              color: Color.fromARGB(255, 12, 10, 10),
            ),
          ),
        ),
        SizeBox(20.0, 0.0),
      ]),
    ) /* add child content here */,
  );
}

Widget SizeBox(dynamic height, dynamic width) {
  return SizedBox(
    height: height,
    width: width,
  );
}
