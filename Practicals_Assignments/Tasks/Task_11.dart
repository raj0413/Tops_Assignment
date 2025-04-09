
import 'dart:io';

List number = [

];
void addlistnumber(int addnum){
  number.add(addnum);
  
}

void main(List<String> args) { 
  String? userinput = ""; 
  print("Enter number");
  int num = int.parse(stdin.readLineSync()!);
  addlistnumber(num);
  print("Do you want to add more number (y/n)");
  userinput = stdin.readLineSync();
  for (var i = 0; userinput == "n"; i++) {
    addlistnumber(num);
    print(number);
  }
  // if (userinput == "y") {
  //   addlistnumber(num);
  // }
  // else if(userinput == "n"){
  //   print(number);
  // }
  // ;
  
}