void main() {
  const x = 42;
  int? maybeValue;

  if (x > 0) {
    maybeValue = x;
  }

  // maybeValue ??= 0;

  int otherValue = maybeValue ?? 0;
  final value = maybeValue!;
  print(value);
  print(otherValue);
}
