import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  int randomNumber = random.nextInt(100) + 1; 
  int? userGuess;
  int attempts = 0;

  print('Welcome to the Number Guessing Game!');
  print('I have selected a number between 1 and 100. Can you guess it?');

  String Function(int) hint = (int guess) {
    if (guess < randomNumber) {
      return "Too low!";
    } else if (guess > randomNumber) {
      return "Too high!";
    } else {
      return "Correct!";
    }
  };

  while (userGuess != randomNumber) {
    stdout.write('Enter your guess: ');
    String? input = stdin.readLineSync();

    if (input != null && int.tryParse(input) != null) {
      userGuess = int.parse(input);
      attempts++;

      String message = hint(userGuess);
      print(message);

      if (message == "Correct!") {
        print('Congratulations! You guessed the number in $attempts attempts.');
      }
    } else {
      print('Please enter a valid number.');
    }
  }
}