void main() {
  
  List<int> list1 = [
    5, 
    3, 
    8, 
    1
    ];

  List<int> list2 = [
    7, 
    2, 
    3, 
    6
    ];

  List<int> list3 = [
    8, 
    9, 
    1, 
    4
    ];


  List<int> combinedList = [...list1, ...list2, ...list3];

 
  Set<int> uniqueSet = combinedList.toSet();

 
  List<int> sortedList = uniqueSet.toList()..sort();

  
  print('Combined, unique, and sorted list: $sortedList');
}