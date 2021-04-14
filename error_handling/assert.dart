class PositiveInt {
  final int value;

  const PositiveInt(this.value)
      : assert(value >= 0, "Value cannot be negative");
}

void main() {
  // const invalidAge = PositiveInt(-1);
  // print(invalidAge);
}
