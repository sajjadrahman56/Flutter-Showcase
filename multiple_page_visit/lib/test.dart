import 'dart:async';
import 'package:mysql1/mysql1.dart';

Future main() async {
  // Open a connection (testdb should already exist)

  final conn = await MySqlConnection.connect(ConnectionSettings(

      host: 'sql6.freesqldatabase.com',
      port: 3306,
      user: 'sql6589647',
      db: 'sql6589647',
      password: '5wAsqMyEnx'));

  /*

  // Create a table
  await conn.query(
      'CREATE TABLE users (id int NOT NULL AUTO_INCREMENT PRIMARY KEY, name varchar(255), email varchar(255), age int)'
          //'INSERT INTO `empsas`(`firstname`, `lastname`, `age`) VALUES ([value-1],[value-2],[value-3])'

  );

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
  }
*/
  // Update some data
  //await conn.query('update empsas set age=? where firstname=?', [100, 'sas']);

  // Query again database using a parameterized query
  var results2 = await conn.query(
      'select firstname, lastname, age from empsas where firstname = ?', ['sami']);
  for (var row in results2) {
    print("\n\t--------------- line 41-----------\n");
    print('FirstName: ${row[0]}, LastName: ${row[1]} age: ${row[2]}');
  }

  // Finally, close the connection
  await conn.close();
}
