abstract class InterfaceA {
  void a();
}

abstract class InterfaceB {
  void b();
}

abstract class Base {
  void foo();
  void bar() => print('bar');
}

class Subclass extends Base {
  @override
  void foo() {}
}
