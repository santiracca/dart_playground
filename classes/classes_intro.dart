class BankAccount {
  BankAccount({
    double balance = 0,
    required String accountHolder,
  })   : balance = balance,
        accountHolder = accountHolder;
  double balance;
  String accountHolder;

  void deposit(double amount) {
    balance += amount;
  }

  bool withdraw(double amount) {
    if (balance > amount) {
      balance -= amount;
      return true;
    } else {
      return false;
    }
  }
}

class Complex {
  const Complex(this.re, this.im);
  const Complex.zero()
      : re = 0,
        im = 0;
  const Complex.identity()
      : re = 1,
        im = 0;
  const Complex.real(this.re) : im = 0;
  const Complex.imaginary(this.im) : re = 0;
  final double re;
  final double im;
}

class Temperature {
  double celsius;
  Temperature.celsius(this.celsius);
  Temperature.farenheit(double farenheit) : celsius = (farenheit - 32) / 1.8;

  double get farenheit => celsius * 1.8 + 32;
  set farenheit(double farenheit) => celsius = (farenheit - 32) / 1.8;
}

class Restaurant {
  const Restaurant({
    required this.name,
    required this.cuisine,
    required this.ratings,
  });
  final String name;
  final String cuisine;
  final List<double> ratings;

  int get totalRatings => this.ratings.length;

  double get averageRating {
    if (this.ratings.isEmpty) {
      return 0;
    }
    final ratingsSum =
        this.ratings.reduce((value, element) => value += element);
    return ratingsSum / this.ratings.length;
  }
}

void main() {}
