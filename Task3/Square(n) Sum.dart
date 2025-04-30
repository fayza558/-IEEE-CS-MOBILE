import 'package:ps/ps.dart' as ps;

void main(List<String> arguments) {
  print(squareSum([1,2,2,4]));
}

int squareSum(List<int> numbers) {
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i] * numbers[i];  
  }
  return sum;
}
