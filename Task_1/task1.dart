import 'package:task1/task1.dart' as task1;
import 'dart:io';

void main(List<String> arguments) {
  //1-String Operations
  String s1 = "Hello ";
  String s2 = "World";
  String s3 = s1 + s2;
  print("Concatenated: $s3");
  int len = s3.length;
  print("Length: $len");
  String up = s3.toUpperCase();
  String low = s3.toLowerCase();
  print("Uppercase: $up");
  print("Lowercase: $low");

  //2-Number
  String num = "405.6";
  double n = double.parse(num);
  int nn = n.toInt();
  print("Integer: $nn");
  print("Double: $n");

  // 3-Temperature Conversion
  int c = 25;
  double f = c * 9 / 5 + 32;
  print("Temperature in Celsius: $c");
  print("Temperature in Fahrenheit: $f");

  //4-Number Comparison
  int num1 = 10, num2 = 20, num3 = 15;
  print("Numbers $num1,$num2,$num3");
  int large = 0, small = 0;
  if (num1 > num3 && num1 > num3) {
    large = num1;
    if (num3 > num2) {
      small = num2;
    } else {
      small = num3;
    }
  }
  if (num2 > num3 && num2 > num1) {
    large = num2;
    if (num1 > num3) {
      small = num3;
    } else {
      small = num1;
    }
  }
  if (num3 > num1 && num3 > num2) {
    large = num3;
    if (num1 > num2) {
      small = num2;
    } else {
      small = num1;
    }
  }
  print("Largest Number: $large \nSmallest Number: $small");

  //5-Calculate the Area and Perimeter of a Rectangle
  print("Enter then length of the rectangle");
  int? length = int.parse(stdin.readLineSync()!);
  print("Enter then weight of the rectangle");
  int? weight = int.parse(stdin.readLineSync()!);
  int area = weight * length;
  int perimeter = 2 * (weight + length);
  print("Length: $length\nWeight: $weight\nArea: $area\nPerimeter: $perimeter");

  //6-Ask the user for a string and print out whether this string is a palindrome or not.
  print("Enter string :");
  String s = stdin.readLineSync()!;
  String reverse(String str) => str.split('').reversed.join('');
  int lenn = s.length;
  String sub1 = s.substring(0, lenn ~/ 2);
  int half;
  if (lenn % 2 == 0) {
    half = lenn ~/ 2;
  } else {
    half = (lenn ~/ 2) + 1;
  }
  String sub2 = s.substring(half, lenn);
  if (sub1.compareTo(reverse(sub2)) == 0) {
    print("IsPalindrome");
  } else {
    print("NotPalindrome");
  }  
}
