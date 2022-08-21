// ignore: file_names
import 'dart:math';

import 'package:flutter/material.dart';

class ListOfButton extends StatefulWidget {
  ListOfButton({super.key});

  @override
  State<ListOfButton> createState() => _ListOfButton();
}

class _ListOfButton extends State<ListOfButton> {
//------------ variable create
  String buttonName = 'click me';
  int curentIndex = 0;
  //double

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Title'),
        ),
        //main body part start from here

        body: Center(
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            //Column for add here vertically
            // Row add for horizontaly

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    //print('Someone Click me ');
                    setState(
                      () {
                        buttonName = 'Clicked';
                      },
                    );
                  },
                  child: Text(buttonName),
                ),
                ElevatedButton(
                  onPressed: () {
                    //print('Someone Click me ');
                    setState(
                      () {
                        buttonName = 'Clicked 2nd ';
                      },
                    );
                  },
                  child: Text(buttonName),
                ),

                /* TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  onPressed: () {},
                  child: Text('TextButton'),
                ),
                */
              ],
            ),
          ),
        ),

        //------------------- Button Create here

        // bottom navigation bar at the end
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings),
            ),
            BottomNavigationBarItem(
              label: 'Back',
              icon: Icon(Icons.back_hand),
            ),
          ],
          currentIndex: curentIndex,
          onTap: (int index) {
            setState(() {
              curentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
