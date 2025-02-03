import 'dart:io';

double celsiusToFahrenheit(double celsius){
  return (celsius * 9 / 5) + 32;
}
double fahrenheitToCelsius(double fahrenheit) {
    return (fahrenheit - 32) * 5 / 9;
 }

void main(List<String> args) {  
  while (true) {
    print('1: Celsius to Fahrenheit');
    print('2: Fahrenheit to Celsius');
    print('3: Exit');
    stdout.write('Enter your choice: ');
    String? choice = stdin.readLineSync();
    
    if (choice == '1') {
      stdout.write('Enter temperature in Celsius: ');
      double? celsius = double.tryParse(stdin.readLineSync() ?? '');
      if (celsius != null) {
        print('Temperature in Fahrenheit: ${celsiusToFahrenheit(celsius)}°F');
      } else {
        print('Invalid input! Please enter a valid number.');
      }
    } else if (choice == '2') {
      stdout.write('Enter temperature in Fahrenheit: ');
      double? fahrenheit = double.tryParse(stdin.readLineSync() ?? '');
      if (fahrenheit != null) {
        print('Temperature in Celsius: ${fahrenheitToCelsius(fahrenheit)}°C');
      } else {
        print('Invalid input! Please enter a valid number.');
      }
    } else if (choice == '3') {
      print('Exiting program.');
      break;
    } else {
      print('Invalid choice!');
    }
  }
}

