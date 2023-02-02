import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/profile_page.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ///for circle er lagi

              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 135,
                    width: 135,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 51, 255),
                        shape: BoxShape.circle),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
              SizedBox(
                height: 45,
              ),

              Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 140,
                          //color: Color.fromARGB(255, 233, 236, 236),
                        ),
                        ElevatedButton(
                          child: Text('Elevated Button'),
                          style: ElevatedButton.styleFrom(),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 140,
                          //color: Color.fromARGB(255, 233, 236, 236),
                        ),
                        ElevatedButton(
                          child: Text('Elevated Button'),
                          style: ElevatedButton.styleFrom(),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 13,
              ),

              Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 140,
                          //color: Color.fromARGB(255, 233, 236, 236),
                        ),
                        ElevatedButton(
                          child: Text('Elevated middle'),
                          style: ElevatedButton.styleFrom(),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 140,
                          //color: Color.fromARGB(255, 233, 236, 236),
                        ),
                        ElevatedButton(
                          child: Text('Elevated Button'),
                          style: ElevatedButton.styleFrom(),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 140,
                          //color: Color.fromARGB(255, 233, 236, 236),
                        ),
                        ElevatedButton(
                          child: Text('Elevated dwon'),
                          style: ElevatedButton.styleFrom(),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 140,
                          //color: Color.fromARGB(255, 233, 236, 236),
                        ),
                        ElevatedButton(
                          child: Text('Elevated But1'),
                          style: ElevatedButton.styleFrom(),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: () {}, child: Text("Log Out ")),
              SizedBox(
                height: 5,
              ),
            ],
          ) /* add child content here */,
        ),
      ),
    ));
  }
}
