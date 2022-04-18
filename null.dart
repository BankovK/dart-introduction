void main() {
  // String? name;
  String? name = "Name1"; // ? allows var to be nullable
  print(name);
  name = null;
  print(name);

  int? num1 = 10;
  int num2 = num1 ?? 0; // ?? checks if null
  print(num2);

  num1 = null;
  num2 = num1 ?? 0;
  print(num2);

  int? a = 10;
  int b = a!; // ! if we are to make sure that a is not null
  print(b);
}