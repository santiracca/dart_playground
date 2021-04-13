import 'dart:math';

abstract class Shape {
  double get area;
  double get permiter;
}

class Square extends Shape {
  final double side;

  Square({required this.side});
  @override
  double get area => side * side;

  @override
  double get permiter => side * 4;
}

class Circle extends Shape {
  final double radius;

  Circle(this.radius);

  @override
  double get area => pi * radius * radius;

  @override
  double get permiter => 2 * pi * radius;
}

void printArea(Shape shape) {
  print(shape.area);
}

void main() {
  final square = Square(side: 10);
  final circle = Circle(10);
  printArea(circle);
  printArea(square);

  final shapes = [
    Square(side: 2),
    Circle(10),
  ];

  shapes.forEach((shape) => printArea(shape));
}
