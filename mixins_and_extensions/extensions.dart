void main() {
  int.tryParse("123");
  '123'.toIntOrNull();
}

extension on String {
  int? toIntOrNull() => int.tryParse(this);
}
