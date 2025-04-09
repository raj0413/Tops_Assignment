void main() {
  List<int> numbers = [
    1, 
    2, 
    3, 
    4, 
    5
    ];


  List<int> squares = transformList(numbers, (n) => n * n);
  List<int> cubes = transformList(numbers, (n) => n * n * n);
  List<double> halves = transformList(numbers, (n) => n / 2);

 
  print('Squares: $squares');
  print('Cubes: $cubes');
  print('Halves: $halves');
}


List<T> transformList<T>(List<int> list, T Function(int) transform) {
  return list.map(transform).toList();
}