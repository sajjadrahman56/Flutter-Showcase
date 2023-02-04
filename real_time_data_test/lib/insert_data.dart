import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class InsertData extends StatefulWidget {
  const InsertData({super.key});

  @override
  State<InsertData> createState() => _InsertDataState();
}

class _InsertDataState extends State<InsertData> {
  final userNameController = TextEditingController();
  final userAgeController = TextEditingController();
  final userSalaryController = TextEditingController();
  final storyController = TextEditingController();

  late DatabaseReference dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('News');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Insert Data"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Inserting Data in firebase in realTime Databae",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                    controller: userNameController,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Name',
                        hintText: 'Enter Your Name ')),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: userAgeController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Age',
                      hintText: 'Enter Your Age '),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: userSalaryController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Salary',
                      hintText: 'Enter YourSalary '),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: storyController,
                  keyboardType: TextInputType.text,
                  maxLength: 1000,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'story',
                      hintText: 'Enter  story '),
                ),
                const SizedBox(
                  height: 30,
                ),
                MaterialButton(
                  onPressed: () {
                    Map<String, String> students = {
                      'name': userNameController.text,
                      'age': userAgeController.text,
                      'salary': userSalaryController.text,
                      'story': storyController.text
                    };

                    dbRef.push().set(students);
                  },
                  child: Text("InsertData"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  minWidth: 300,
                  height: 40,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
