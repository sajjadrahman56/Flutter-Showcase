import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:multiple_page_visit/app/routes/app_routes.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "REG PAGE",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.amber,
                backgroundColor: Colors.black,
                padding: EdgeInsets.all(30),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 100,
              width: 200,
              color: Color.fromARGB(255, 56, 204, 149),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.LOGIN);
              },
              child: Text(
                "LOG PAGE",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Color.fromARGB(255, 14, 14, 14),
                backgroundColor: Color.fromARGB(255, 179, 63, 63),
                padding: EdgeInsets.all(31),
              ),
            )
          ],
        ),
      ),
    );
  }
}
