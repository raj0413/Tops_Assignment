import 'dart:io';
import 'dart:math';

bool checkforprime(int number) {
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i <= sqrt(number); i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  int num = 0;
  print("Enter number :: ");
  num = int.parse(stdin.readLineSync()!);

  if (checkforprime(num)) {
    print('$num is a prime number.');
  } else {
    print('$num is not a prime number.');
  }
}
