
import 'dart:io';

class Solution {
  void isPalindrome(String? x) {
    String num = x.toString();
    String reversedNum = num.split('').reversed.join('');
    
    if(num == reversedNum){
      return print("yes , given string is palindrome");
    } else{
      return print("your given string is not palindrome string ");
    }
  }
}
void main(List<String> args) {
  print("enter name");
  String? name = stdin.readLineSync();
  Solution s = Solution();
  s.isPalindrome(name); 
}