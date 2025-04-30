import 'package:sss/sss.dart' as sss;

void main(List<String> arguments) {
  print(tidyNumber(1024));
}
bool tidyNumber(int n){
  String num=n.toString();
  for(int i=0;i<num.length-1;i++){
    if(num[i].compareTo(num[i+1])>0){
      return false;
    }
  }
  return true;
}
bool tidyttNumber(int n) {
  String num = n.toString();

  for (int i = 0; i < num.length - 1; i++) {
    if (num[i].compareTo(num[i + 1]) > 0) {
      return false;
    }
  }

  return true; 
}

bool fayzaa(n) {
String s=n.toString();
  List lt=s.split("");
  for(int i=0;i<lt.length-1;i++){
    if(int.parse(lt[i])>int.parse(lt[i+1])){
      return false;
      break;
    }
  }
  return true;
}