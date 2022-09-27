import 'package:flutter/material.dart';

class BasicLayoutTry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Sajjad',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              height: 2,
              letterSpacing: 5, //letter spacing
              decorationStyle: TextDecorationStyle.double,
              decorationThickness: 1.5,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        body: Container(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              Expanded(
                child: Image.asset(
                  'images/st.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                flex: 2,
                child: Image.asset(
                  'images/pic2.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Image.asset(
                    'images/pic3.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
