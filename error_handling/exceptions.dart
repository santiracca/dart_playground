class Fraction {
  final int numerator;
  final int denominator;

  Fraction(this.numerator, this.denominator) {
    if (denominator == 0) {
      throw IntegerDivisionByZeroException();
    }
  }

  double get value => numerator / denominator;
}

class EmailAddress {
  final String email;

  EmailAddress(this.email) {
    if (!email.contains("@")) {
      throw FormatException("Invalid Email");
    }
  }
}

void main() {
  try {
    final f = Fraction(3, 0);
    print(f.value);
  } on IntegerDivisionByZeroException {
    print("Invalid Fraction");
  }
}
