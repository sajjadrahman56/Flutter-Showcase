import 'dart:io';

void main() {
  print("Enter your name?");
  // Reading name of the Geek
  String? name = stdin.readLineSync();

  // Printing the name
  print("Hello, $name! \nWelcome to GeeksforGeeks!!");
  ;
}
