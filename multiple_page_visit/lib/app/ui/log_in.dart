import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'dart:async';
import 'package:mysql1/mysql1.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "sakib";

  Future dataFetchSql() async {
    // Open a connection (testdb should already exist)
    final conn = await MySqlConnection.connect(ConnectionSettings(
        host: 'sql6.freesqldatabase.com',
        port: 3306,
        user: 'sql6589647',
        db: 'sql6589647',
        password: '5wAsqMyEnx'));

    // Insert some data
    var result = await conn.query(
        'insert into users (name, email, age) values (?, ?, ?)',
        ['Boby', 'bob@bobs.com', 29]);
    print("\n\t--------------- line 21 -----------\n");
    print('Inserted row id=${result.insertId}');

    // Query the database using a parameterized query
    var results = await conn.query(
        'select name, email, age from users where id = ?', [result.insertId]);
    for (var row in results) {
      print("\n\t--------------- line 30 -----------\n");
      print('Name: ${row[0]}, email: ${row[1]} age: ${row[2]}');
      name = row[1];
    }

    // Finally, close the connection
    await conn.close();
  }

  @override
  Widget build(BuildContext context) {
    dataFetchSql();
    return Scaffold(
      appBar: AppBar(
        title: Text("I am inside of Log in part"),
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 300,
          child: Text(name),
        ),
      ),
    );
  }
}
