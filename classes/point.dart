import 'package:equatable/equatable.dart';

class Point extends Equatable {
  const Point(this.x, this.y);
  final int x;
  final int y;

  @override
  bool get stringify => true;

  Point operator +(Point other) {
    return Point(x + other.x, y + other.y);
  }

  Point operator *(int other) {
    return Point(x * other, y * other);
  }

  @override
  List<Object?> get props => [x, y];
}

void main() {
  print(Point(0, 0) == Point(0, 0));
}
