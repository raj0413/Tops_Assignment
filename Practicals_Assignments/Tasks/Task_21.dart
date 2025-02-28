import 'dart:io';

void main(List<String> args) {
  print("Enter number 1");
  double num1 = double.parse(stdin.readLineSync()!);
  print("Enter number 1");
  double num2 = double.parse(stdin.readLineSync()!);  
  try {
    double division = num1/num2;
  } catch (e) {
    
  }
}