import 'dart:io';

void main() {
  print("Enter a string:");
  String input =   stdin.readLineSync()!;
  Map<String, int> frequencyMap = {};
  for (int i = 0; i < input.length; i++) {
    String char = input[i];
    if (frequencyMap.containsKey(char)) {
      frequencyMap[char] 1;
    } else {
      frequencyMap[char] = 1;
    }
  }
  print('Character frequency:');
  frequencyMap.forEach((char, count) {
    print('$char: $count');
  });
}