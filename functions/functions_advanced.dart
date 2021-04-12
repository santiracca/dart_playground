// typedef Greet = String Function(String);
typedef String Greet(String name);
void main() {
  final sayHi = (String name) => "Hi, $name";
  print(sayHi);
  const multiplier = 10;
  const list = [1, 2, 3];
  const list2 = [1.0, 2.0, 3.0];
  final result = list.map((x) {
    return x * multiplier;
  });
  print(result);
  final doubles = transform<int, int>(list, (x) => x * 2);
  final rounded = transform<double, int>(list2, (x) => x.round());
}

void welcome(Greet greet, String name) {
  print(greet(name));
}

List<R> transform<T, R>(List<T> items, R Function(T) f) {
  var result = <R>[];
  for (var x in items) {
    result.add(f(x));
  }
  return result;
}
