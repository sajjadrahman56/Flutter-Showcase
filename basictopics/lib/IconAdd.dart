// ignore: file_names
import 'package:flutter/material.dart';

class IconAdd extends StatefulWidget {
  IconAdd({super.key});

  @override
  State<IconAdd> createState() => _IconAdd();
}

class _IconAdd extends State<IconAdd> {
//------------ variable create

  //double

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppExtensions(),
    );
  }
}

class MyAppExtensions extends StatefulWidget {
  const MyAppExtensions({super.key});

  @override
  State<MyAppExtensions> createState() => _MyAppExtensionsState();
}

class _MyAppExtensionsState extends State<MyAppExtensions> {
  @override
  String buttonName = 'click me';
  int curentIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
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
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const nextPage(),
                            ),
                          );
                        },
                        child: const Text('Next Page'),
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
    );
  }
}

class nextPage extends StatelessWidget {
  const nextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
