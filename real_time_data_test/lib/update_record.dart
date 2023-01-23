import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class UpdateRecord extends StatefulWidget {
  const UpdateRecord({Key? key, required this.studentKey}) : super(key: key);
  final String studentKey;

  @override
  State<UpdateRecord> createState() => _UpdateRecordState();
}

class _UpdateRecordState extends State<UpdateRecord> {
  final userNameCrontroller = TextEditingController();
  final userAgeCrontroller = TextEditingController();
  final userSalaryCrontroller = TextEditingController();

  late DatabaseReference dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('Students');
    getStudentData();
  }

  void getStudentData() async {
    DataSnapshot snapshot = await dbRef.child(widget.studentKey).get();

    Map student = snapshot.value as Map;

    userNameCrontroller.text = student['name'];
    userAgeCrontroller.text = student['age'];
    userSalaryCrontroller.text = student['salary'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Record'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(9.0),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Updating Data in Firebase Realtime Data',
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
                controller: userNameCrontroller,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                    hintText: 'Enter your Name'),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: userNameCrontroller,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'AGE',
                    hintText: 'Enter your AGE'),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: userNameCrontroller,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Salary',
                    hintText: 'Enter your Salary'),
              ),
              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                onPressed: () {
                  Map<String, String> students = {
                    'name': userNameCrontroller.text,
                    'age': userAgeCrontroller.text,
                    'salary': userSalaryCrontroller.text
                  };

                  dbRef
                      .child(widget.studentKey)
                      .update(students)
                      .then((value) => {Navigator.pop(context)});
                },
                child: Text('Update Data'),
                color: Colors.amber,
                textColor: Colors.black,
                minWidth: 400,
                height: 400,
              )
            ],
          ),
        ),
      ),
    );
  }
}
