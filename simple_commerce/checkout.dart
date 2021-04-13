import 'dart:io';

class Product {
  final int id;
  final String name;
  final double price;

  const Product({
    required this.id,
    required this.name,
    required this.price,
  });

  String get displayName => "($initial)${name.substring(1)}: \$$price";

  String get initial => name.substring(0, 1);
}

class Item {
  final Product product;
  final int quantity;

  const Item({
    required this.product,
    this.quantity = 1,
  });

  double get price => quantity * product.price;

  @override
  String toString() {
    return "$quantity x ${product.name}: \$$price";
  }
}

class Cart {
  final Map<int, Item> _items = {};

  void addProduct(Product product) {
    final item = _items[product.id];
    if (item == null) {
      _items[product.id] = Item(product: product, quantity: 1);
    } else {
      _items[product.id] = Item(product: product, quantity: item.quantity + 1);
    }
  }

  double total() => _items.values
      .map((item) => item.price)
      .reduce((value, element) => value + element);

  bool get isEmpty => _items.isEmpty;

  @override
  String toString() {
    if (_items.isEmpty) {
      return "Cart is empty";
    }
    final itemizedList =
        _items.values.map((item) => item.toString()).join('\n');
    return "------\n$itemizedList\nCart Total: ${total()}\n-------";
  }
}

const allProducts = [
  Product(id: 1, name: 'apples', price: 1.60),
  Product(id: 2, name: 'bananas', price: 0.70),
  Product(id: 3, name: 'courgettes', price: 1.00),
  Product(id: 4, name: 'grapes', price: 2.0),
  Product(id: 5, name: 'mushrooms', price: 0.80),
  Product(id: 6, name: 'potatoes', price: 1.50),
];

void main() {
  final cart = Cart();
  var continuePrompt = true;
  while (continuePrompt) {
    stdout.write(
        "What do you want to do? (v)iew items, (a)dd item, (c)heckout: ");
    var line = stdin.readLineSync();
    switch (line) {
      case 'a':
        final product = chooseProduct();
        if (product != null) {
          cart.addProduct(product);
          print(cart);
        }

        break;
      case 'v':
        print(cart);

        break;
      case 'c':
        if (checkout(cart)) {
          continuePrompt = false;
        }

        break;
      default:
        stdout.write("Unknown command");
    }
  }
}

Product? chooseProduct() {
  final productsList =
      allProducts.map((product) => product.displayName).join('\n');
  stdout.write("Available products:\n$productsList\nYour choice: ");
  var userChoice = stdin.readLineSync();
  for (var product in allProducts) {
    if (product.initial == userChoice) {
      return product;
    }
  }
  print("Product not found");
  return null;
}

bool checkout(Cart cart) {
  if (cart.isEmpty) {
    print("Cart is empty");
    return false;
  }
  final total = cart.total();
  print("Total: \$${total}");
  stdout.write("Payment in cash: ");
  final line = stdin.readLineSync();
  if (line == null || line.isEmpty) {
    return false;
  }
  final paid = double.tryParse(line);
  if (paid == null) {
    return false;
  }
  if (paid >= total) {
    final change = paid - total;
    print("Change: \n${change.toStringAsFixed(2)}");
    return true;
  } else {
    print("Not enough cash.");
    return false;
  }
}
