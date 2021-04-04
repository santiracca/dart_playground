void main() {
  /// NULL SAFETY FLOW ANALYSIS
  int? a;
  int b = 2;
  if (a == null) {
    print("a is null");
  } else {
    print(a + b);
  }

  int x = 10;
  int sign;
  if (x >= 0) {
    sign = 1;
  } else {
    sign = -1;
  }
  print(sign);
}
