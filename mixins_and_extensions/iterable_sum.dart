void main() {
  final sum = [1, 2, 3].sum();
  print(sum);
  print(1.rangeTo(5));
}

extension IterableX<T extends num> on Iterable<T> {
  T sum() => this.reduce((value, element) => (value + element) as T);
}

extension on int {
  List<int> rangeTo(int other) {
    if (other < this) return [];
    final newList = <int>[];
    for (var i = this; i <= other; i++) {
      newList.add(i);
    }
    return newList;
  }
}
