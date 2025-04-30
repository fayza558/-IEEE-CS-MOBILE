import 'package:ps/ps.dart' as ps;

void main(List<String> arguments) {
  print(quadrant(1,2));
}
int quadrant(int x, int y) {
  if(x>=0&&y>=0){
    return 1;
  }else if(x<0&&y>=0){
    return 2;
  }else if(x<0&&y<0){
    return 3;
  }else {
    return 4;
  }
}