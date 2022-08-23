// ignore: file_names
import 'package:flutter/material.dart';

class imageAdd extends StatefulWidget {
  imageAdd({super.key});

  @override
  State<imageAdd> createState() => _imageAdd();
}

class _imageAdd extends State<imageAdd> {
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
            child: curentIndex == 0
                ? Container(
                    // width: double.infinity,
                    //height: double.infinity,
                    color: Colors.amber,
                    //Column for add here vertically
                    // Row add for horizontaly

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            onPrimary: Color.fromARGB(255, 210, 11, 174),
                            primary: Colors.black,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 25),
                            textStyle: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500),
                          ),
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
                  )
                //now I wanna image add from here
                : Image.asset('images/meAndTalha.jpeg')
            //Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnzfN2a0UjuIS-tnDxfxAk6tKAY-q8zC99mQ&usqp=CAU'),//image add from internet
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
