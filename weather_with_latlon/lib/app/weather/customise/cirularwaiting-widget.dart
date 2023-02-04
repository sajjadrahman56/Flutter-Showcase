import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

// ignore: non_constant_identifier_names
Widget CirularWidget() {
  return SafeArea(
    child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Color.fromARGB(255, 220, 204, 204),
              height: 200,
              width: 250,
              child: Container(
                alignment: Alignment.center,
                height: 150,
                width: 150,
                color: Color.fromARGB(255, 239, 242, 239),
                // child: CircularProgressIndicator(),
                child: CircularPercentIndicator(
                  radius: 70.0,
                  animation: true,
                  animationDuration: 900,
                  lineWidth: 15.0,
                  percent: 0.4,
                  center: new Text(
                    "100%",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  circularStrokeCap: CircularStrokeCap.butt,
                  backgroundColor: Color.fromARGB(255, 59, 209, 255),
                  progressColor: Color.fromARGB(255, 20, 212, 87),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.center,
              height: 100,
              width: 350,
              child: Text("Your Internet Speed is Down"),
            )
          ],
        ),
      ),
    ),
  );
}
