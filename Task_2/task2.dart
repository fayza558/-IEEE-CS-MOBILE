import 'dart:io';
import 'package:task2/task2.dart' as task2;

void main(List<String> arguments) {
  //1 Create a program that asks the user for a number and then prints out a list of all the divisors of that number.
  print("Enter Number: ");
  try {
    int? num = int.parse(stdin.readLineSync()!);
    if (num < 0) {
      print("Please enter positive number");
      return;
    }
    print("The divisors are :");
    for (int i = 1; i <= num; i++) {
      if (num % i == 0) {
        stdout.write("$i "); //by searching
      }
    }
    print("");
  } catch (e) {
    print("Please enter valid number");
  }

  //2- Write a loop to print all even numbers between 1 and 20
  for (int i = 2; i <= 20; i += 2) {
    print("$i\n");
  }
}
