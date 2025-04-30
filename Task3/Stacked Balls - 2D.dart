import 'package:dss/dss.dart' as dss;
import 'dart:math';
void main(List<String> arguments) {
  print(stackHeight2d(5));
}


double stackHeight2d(int layers) {
  if (layers == 0) return 0.0; 
  if (layers == 1) return 1.0;
  return 1 + (layers - 1) * (sqrt(3) / 2);
}
