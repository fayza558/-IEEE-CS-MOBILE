import 'package:task3/task3.dart' as task3;

void main(List<String> arguments) {
  print(descendingOrder(45773682));

}

int descendingOrder(n) {
  String num=n.toString();
  List<String>digits=num.split('');
  digits.sort((a,b)=>b.compareTo(a));
  String sorted=digits.join('');
  return int.parse(sorted);
}