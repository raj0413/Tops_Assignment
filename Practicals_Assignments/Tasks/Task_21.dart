import 'dart:io';

void main() {
  print('Enter the numerator:');
  double? numerator = double.tryParse(stdin.readLineSync() ?? '');

  if (numerator == null) {
    print('Invalid input for numerator. Please enter a valid number.');
    return;
  }
  print('Enter the denominator:');
  double? denominator = double.tryParse(stdin.readLineSync() ?? '');

  if (denominator == null) {
    print('Invalid input for denominator. Please enter a valid number.');
    return;
  }

  try {
    double result = divide(numerator, denominator);
    print('Result: $numerator / $denominator = $result');
  } catch (e) {
    print('Error: $e');
  }
}

double divide(double numerator, double denominator) {
  if (denominator == 0) {
    throw Exception('Division by zero is not allowed.');
  }
  return numerator / denominator;
}