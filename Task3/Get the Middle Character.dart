import 'package:ss/ss.dart' as ss;

void main(List<String> arguments) {
  print(getMiddle("test"));
}
String getMiddle(String s) {
  int sz = s.length;
  int mid = sz ~/ 2; 
  if (sz % 2 == 0) {
     return s.substring(mid - 1, mid + 1);  
  } else {
    return s.substring(mid, mid + 1); 
  }
}