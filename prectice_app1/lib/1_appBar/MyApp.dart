import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leadingWidth: 50,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.person),
            color: Colors.grey,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.logout),
              color: Colors.grey,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.details),
              color: Colors.grey,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.nat),
              color: Colors.grey,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.trending_neutral),
              color: Colors.grey,
            ),
          ],
          title: Text('Home Page '),
        ),
      ),
    );
  }
}

//my app1 consist of numerous not all complete
class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // automaticallyImplyLeading: true,
          // leading: Icon(Icons.account_circle_outlined),
          // leadingWidth: 100,
          // title: Text('Hola Amigo'),
          toolbarHeight: 100,
          toolbarOpacity: 0.5,
          title: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              Container(
                // alignment: FractionalOffset.center,
                width: 40,
                child: Image.asset('images/sa1.png'),
              ),
              // Container(
              //   alignment: FractionalOffset.center,
              //   //padding: EdgeInsets.all(3),
              //   width: 40,
              //   child: Image.asset('images/sa1.png'),
              // ),
              // Container(
              //   alignment: FractionalOffset.center,
              //   //padding: EdgeInsets.all(3),
              //   width: 40,
              //   child: Image.asset('images/sa1.png'),
              // ),
            ],
          ),
          actions: [
            Container(
              width: 30,
              child: Image.asset('images/st.jpeg'),
            ),
            Icon(Icons.more_vert),
          ],
        ),
      ),
    );
  }
}
