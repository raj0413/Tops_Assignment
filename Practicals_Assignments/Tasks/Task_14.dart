void main() {
  List<String> words = ['banana', 'apple', 'orange', 'banana', 'apple', 'grape'];
  
  
  Set<String> uniqueWords = Set.from(words);
  
  List<String> sortedUniqueWords = uniqueWords.toList()..sort();
  
  print('Unique words in alphabetical order:');
  for (var word in sortedUniqueWords) {
    print(word);
  }
}
