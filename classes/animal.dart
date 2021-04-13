class Animal {
  const Animal({required this.age});
  final int age;

  void sleep() => print('sleep');
}

class Dog extends Animal {
  Dog({required int age}) : super(age: age);

  void bark() => print("bark");

  @override
  void sleep() {
    print("Dog is sleeping");
  }
}

class CleverDog extends Dog {
  CleverDog({required int age}) : super(age: age);

  void catchBall() => print("catchBall");
}

class Cow extends Animal {
  Cow({required int age}) : super(age: age);

  void moo() => print("moo");
}

void main() {
  final animal = Animal(age: 10);
  animal.sleep();
  final dog = Dog(age: 20);
  dog.bark();
  dog.sleep();
  final cow = Cow(age: 10);
  cow.moo();
  final cleverDog = CleverDog(age: 20);
  cleverDog.catchBall();
  cleverDog.sleep();
}
