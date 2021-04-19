Future<String> fetchUserOrder() =>
    Future.delayed(Duration(seconds: 2), () => "Coffee");

Future<String> fetchUserOrder2() => Future.value("Espresso");

Future<String> fetchUserOrder3() => Future.error(Exception("Out of milk"));

Future<void> countdown(int n) async {
  print(n);
  for (var i = n - 1; i >= 0; i--) {
    await Future.delayed(Duration(seconds: 1), () => print(i));
  }
  print("Done");
}

Future<void> main() async {
  countdown(5);
  fetchUserOrder()
      .then((value) => print(value))
      .catchError((error) => print(error))
      .whenComplete(() => print("done"));

  try {
    final order = await fetchUserOrder();
    print(order);
  } catch (e) {
    print(e);
  } finally {
    print("done");
  }
}
