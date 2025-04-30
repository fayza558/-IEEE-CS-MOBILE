import 'package:ss/ss.dart' as ss;

void main(List<String> arguments) {
  print(dblLinear(10));
}
int dblLinear(int n) {
  List<int> u = [1];
  int indexY = 0, indexZ = 0;

  for (int i = 1; i <= n; i++) {
    int nextY = 2 * u[indexY] + 1;
    int nextZ = 3 * u[indexZ] + 1;

    if (nextY < nextZ) {
      u.add(nextY);
      indexY++;
    } else if (nextY > nextZ) {
      u.add(nextZ);
      indexZ++;
    } else {
      u.add(nextY); 
      indexY++;
      indexZ++;
    }
  }

  return u[n];
}