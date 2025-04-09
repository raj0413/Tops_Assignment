
import 'dart:io';

const Pi = 3.14 ; 

double Area (double radius ){
return Pi * (radius * radius);
}
double circumstance (double radius ){
return 2*Pi*radius;
}
void main(List<String> args) {
  print("Area and ciscumstance of circle");
  print("Enter radius :");
  double? radius = double.tryParse(stdin.readLineSync() ?? '');
  if (radius != null ) {
    print("Area of circle is ${Area(radius)} and Circumstance of circle is ${circumstance(radius)} ");
  }
}