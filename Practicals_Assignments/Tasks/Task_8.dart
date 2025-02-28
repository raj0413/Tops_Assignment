import 'dart:io';

void main(List<String> args) {
  print("Enter 1st number");
  int a = int.parse(stdin.readLineSync()!);

  print("Enter 2nd number");
  int b = int.parse(stdin.readLineSync()!);

  print("Enter operator");
  String? operator = stdin.readLineSync();

  if (operator == "+") {
    print("Addition of $a + $b = ${a+b}");
  }
  else if(operator == "-"){
    print("Addition of $a - $b = ${a-b}");
  }
  else if(operator == "*"){
    print("Addition of $a * $b = ${a*b}");
  }
  else if(operator == "/"){
    print("Addition of $a / $b = ${a/b}");
  }
  else {
    print("Invalid input , Please Enter '+' '-' '/' '*' operator");
  }
}
