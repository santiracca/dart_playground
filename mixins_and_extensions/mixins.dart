class Animal with Breathing {}

mixin Breathing {
  void breathe() => print("breathing");
}

mixin Swimming {
  void swim() => print("swimming");
}

class Plant with Breathing {}

class Fish extends Animal with Swimming {}

class Human extends Animal with Swimming {}
