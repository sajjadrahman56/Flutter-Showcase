import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/weather/views/six_profile_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TestMainDemo(),
    );
  }
}

class TestMainDemo extends StatefulWidget {
  const TestMainDemo({Key? key}) : super(key: key);

  @override
  State<TestMainDemo> createState() => _TestMainDemoState();
}

class _TestMainDemoState extends State<TestMainDemo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: (){
              Get.to(MyGridScreen());
            },
            child: Text("CLICK ME",style: TextStyle(fontSize:
            30),),
          ),
        ),
      ),
    ));
  }
}
