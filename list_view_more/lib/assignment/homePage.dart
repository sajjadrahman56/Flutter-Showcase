import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as sajjad;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _ipgot = 'a', _isp = 'l', _country = 'Bangladesh', _div = 'h';

  void getRequestTest() async {
    Uri url = Uri.https("ifconfig.co", "json");
    sajjad.Response response = await sajjad.get(url);
    //print(response.body);

    Map<String, dynamic> json = jsonDecode(response.body);

    print(json["ip"]);

    setState(() {
      _ipgot = json["ip"];
      _isp = json["asn_org"];
      _div = json["city"];
      _country = _div + ',' + 'Bangladesh';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
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
            textPass(_isp),
            const Text(
              "Current Location",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
            textPass(_country),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                getRequestTest();
                print('sajjad');
              },
              child: Text("Show on map", style: TextStyle(fontSize: 19)),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
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
          style: const TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
      ),
    );
  }
}
