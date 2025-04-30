import 'package:ss/ss.dart' as ss;

void main(List<String> arguments) {
  print(potatoes(99, 100, 98)); 
}
int potatoes(int p0, int w0, int p1) {

  double finalWeight = (w0 * (100 - p0)) / (100 - p1);
  return finalWeight.toInt(); 
}