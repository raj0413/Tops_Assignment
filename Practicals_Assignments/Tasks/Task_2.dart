import 'dart:io';

void main(List<String> args) {
  print("Enter any number");
  int num = int.parse(stdin.readLineSync()!);
  if (num%2 == 0) {
    print("$num is even number");  
  }
  else{
    print("$num is odd number");
  }
}