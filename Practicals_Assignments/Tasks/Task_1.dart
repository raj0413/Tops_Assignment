import 'dart:io';

void main(List<String> args) {
  String? name;
  int age;
  int remaining_age;
  print("Enter your good name");
  name = stdin.readLineSync();
  print("welcome $name");
  print("Enter your Age");
  age = int.parse(stdin.readLineSync()!);
  remaining_age = 100 - age;
  print("For completing 100 your remaining age is $remaining_age");
}
