void main(List<String> args) {
  for (var i = 0; i <= 100; i++) {
    if (i % 3 == 0) {
      print("Fizz");
    }
    else{
      print(i);
    }
    if (i % 3 == 0 && i % 5 ==0) {
      print("FizzBuzz");
    }
     else{
      print(i);
    }
  }
}