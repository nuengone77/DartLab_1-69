import 'dart:math';

int multiply(int a, int b) => a * b;

double calculateAreaSquare({required double width, required double height}) {
  return width * height;
}

double calculateAreaTriangle({required double width, required double height}) {
  return 1 / 2 * width * height;
}

double calculateVolumeCylinder({required double radius, required double height}) {
  return pi * radius * radius * height;
}

void main() {

  int product = multiply(7, 6);
  print('7 * 6 = $product');

  //square
  double areaSquare = calculateAreaSquare(width: 5.5, height: 10.0);
  print('AreaSquare (5.5 x 10.0 = $areaSquare)');

  //triangle
  double areaTriangle = calculateAreaTriangle(width: 8.0, height: 4.0);
  print('AreaTriangle (4.0 x 8.0) = $areaTriangle');

  //cylinder
  double volumeCylinder = calculateVolumeCylinder(radius: 4, height: 5);
  double ans = double.parse(volumeCylinder.toStringAsFixed(2));
  print('VolumeCylinder (r = 4, h = 5) = $ans');
}
