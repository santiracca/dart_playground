void main() {
  const name = "Santi";
  const age = 28;
  print(printName(name, age));
  const name2 = "Lara";
  const age2 = 26;
  print(printName(name2, age2));

  print(sumAllNums([]));
  print(sumAllNums([1, 2]));
  print(sumAllNums([1, 2, 3, 4]));
}

String printName(String name, int age) {
  return "My name is $name and I'm $age years old";
}

double sumAllNums(List<double> nums) {
  if (nums.isEmpty) return 0;
  return nums.reduce((value, element) => value += element);
}

// OPTIONAL POSITIONAL ARGUMENTS
void foo(int a, [int b = 5]) {
  print("a: $a, b: $b");
}

// FAT ARROW NOTATION
int sum(int x, int y) => x + y;
