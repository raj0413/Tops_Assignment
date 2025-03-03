void main() {
  String inputString = "hello";
  
  Map<String, int> charFrequency = countCharacterFrequency(inputString);
  print("Character Frequencies:");
  charFrequency.forEach((char, count) {
    print('$char: $count');
  });
}

Map<String, int> countCharacterFrequency(String input) {
  Map<String, int> frequencyMap = {};
  for (int i = 0; i < input.length; i++) {
    String char = input[i];
    
    frequencyMap[char] = (frequencyMap[char] ?? 0) + 1;
  }
  
  return frequencyMap;
}