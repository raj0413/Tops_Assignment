void main() async {
  final streamGenerator = NumberGenerator();
  
  print('Starting stream...');
  
  try {
    await for (final number in streamGenerator.generateNumbers(10)) {
      print('Received number: $number');
      
      await Future.delayed(Duration(milliseconds: 500));
    }
  } catch (e) {
    print('Error: $e');
  }
  
  print('Stream completed!');
}

class NumberGenerator {
  Stream<int> generateNumbers(int maxCount) async* {
    try {
      int count = 1;
      
      while (count <= maxCount) {

        await Future.delayed(Duration(milliseconds: 200));
        
      
        yield count;
        
        count++;
      }
    } catch (e) {
      print('Error generating numbers: $e');
      rethrow;
    }
  }
}
