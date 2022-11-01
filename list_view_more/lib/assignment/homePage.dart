import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as sajjad;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _ipgot = 'a';

  @override
  Widget build(BuildContext context) {
    void getRequestTest() async {
      Uri url = Uri.https("ifconfig.co", "json");
      sajjad.Response response = await sajjad.get(url);
      //print(response.body);

      Map<String, dynamic> json = jsonDecode(response.body);
      setState(() {
        _ipgot = json["ip"];
      });
      print(json["ip"]);
    }

    TextStyle textStyle = const TextStyle(
      fontSize: 18,
      height:
          2, //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
      // color: Colors.redAccent, //font color
      //backgroundColor: Colors.black12, //background color
      //letterSpacing: 5, //letter spacing
      //decoration: TextDecoration.underline, //make underline
      // decorationStyle: TextDecorationStyle.double, //double underline
      // decorationColor: Colors.brown, //text decoration 'underline' color
      //decorationThickness: 1.5, //decoration 'underline' thickness
      //fontStyle: FontStyle.italic,
    );
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Network Info "),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Current IP",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
            textPass(_ipgot),
            // const SizedBox(height: 10,),
            const Text(
              "I S P",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
            // const SizedBox(height: 10,),
            textPass(_ipgot),
            const Text(
              "Current Location",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
            BoxDesign(_ipgot),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  getRequestTest();
                },
                child:
                    Text("Show on google map", style: TextStyle(fontSize: 19))),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget BoxDesign(String text) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
            width: 5,
          ),
          borderRadius: BorderRadius.circular(50)),
      child: const Center(
          child: Text(
        "a",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
      )),
    );
  }

  // void getRequestTest() async {
  //   Uri url = Uri.https("ifconfig.co", "json");
  //   sajjad.Response response = await sajjad.get(url);
  //   //print(response.body);

  //   Map<String, dynamic> json = jsonDecode(response.body);
  //   _ipgot = json["ip"];
  //   print(json["ip"]);
  // }
}

class textPass extends StatelessWidget {
  final String childText;
  const textPass(this.childText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
            width: 5,
          ),
          borderRadius: BorderRadius.circular(50)),
      child: Center(
        child: Text(
          childText,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
