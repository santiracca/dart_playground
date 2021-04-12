void main() {
  const list = [1, 2, 3, 4];
  final even = list.where((value) => value % 2 == 0);
  print(even);
  final value = list.firstWhere((x) => x == 5, orElse: () => -1);
  print(value);
}

List<T> where<T>(List<T> list, bool Function(T) callback) {
  final newList = <T>[];
  for (var item in list) {
    if (callback(item)) {
      newList.add(item);
    }
  }
  return newList;
}

T firstWhere<T>(List<T> list, bool Function(T) f,
    {required T Function() orElse}) {
  for (var item in list) {
    if (f(item)) {
      return item;
    }
  }
  return orElse();
}
