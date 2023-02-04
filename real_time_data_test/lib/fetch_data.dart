import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

import 'package:flutter/material.dart';

import 'package:real_time_data_test/update_record.dart';

class FetchData extends StatefulWidget {
  const FetchData({super.key});

  @override
  State<FetchData> createState() => _FetchDataState();
}

class _FetchDataState extends State<FetchData> {
  Query dbRef = FirebaseDatabase.instance.ref().child('News');
  DatabaseReference reference = FirebaseDatabase.instance.ref().child('News');

  Widget listItem({required Map student}) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        height: 170,
        color: Color.fromARGB(255, 64, 255, 172),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                student['name'],
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                student['age'],
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                student['salary'],
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                student['story'],
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) =>
                                    UpdateRecord(newsKey: student['key'])));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.edit,
                            color: Theme.of(context).primaryColor,
                          )
                        ],
                      )),
                  SizedBox(
                    width: 6,
                  ),
                  GestureDetector(
                      onTap: () {
                        reference.child(student['key']).remove();
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.delete,
                            color: Colors.red[700],
                          )
                        ],
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetching Data'),
      ),
      body: Container(
        height: double.infinity,
        child: FirebaseAnimatedList(
            query: dbRef,
            itemBuilder: (BuildContext context, DataSnapshot snapshot,
                Animation<double> animation, int index) {
              Map student = snapshot.value as Map;
              student['key'] = snapshot.key;

              return listItem(student: student);
            }),
      ),
    );
  }
}
