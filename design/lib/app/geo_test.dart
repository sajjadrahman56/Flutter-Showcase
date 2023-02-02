import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geolocator/geolocator.dart';

class GeoFunctionCall extends StatefulWidget {
  const GeoFunctionCall({super.key});

  @override
  State<GeoFunctionCall> createState() => _GeoFunctionCallState();
}

class _GeoFunctionCallState extends State<GeoFunctionCall> {
  void getLoca() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);

    print("\n\tPOSTION METDOD====   ${position}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            color: Colors.amber,
            child: ElevatedButton(
              child: Text("Get Location"),
              onPressed: () {
                getLoca();
              },
            )),
      ),
    );
  }
}
