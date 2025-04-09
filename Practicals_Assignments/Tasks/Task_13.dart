import 'dart:io';

void main() {
  print("Enter the size of the list:");
  int n = int.parse(stdin.readLineSync()!);
  
  print("Enter the elements of the list:");
  List<int> numbers = [];
  
  for (int i = 0; i < n; i++) {
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }
  
  // Bubble sort 
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (numbers[j] > numbers[j + 1]) {
        int temp = numbers[j];
        numbers[j] = numbers[j + 1];
        numbers[j + 1] = temp;
      }
    }
  }
  
  print('Sorted in ascending order: $numbers');
  
  // Reset the list (copy original list or input it again)
  // For simplicity, we assume we have the original list
  // If not, you need to input the list again
  List<int> numbersCopy = numbers;
  
  // Bubble sort in descending order
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (numbersCopy[j] < numbersCopy[j + 1]) {
        int temp = numbersCopy[j];
        numbersCopy[j] = numbersCopy[j + 1];
        numbersCopy[j + 1] = temp;
      }
    }
  }
  
  print('Sorted in descending order: $numbersCopy');
}