void main(List<String> args) {
  int a = 4;
  int b = 2;
  print(a + b);
  print(4 + b);

  print(a - b);
  print(a - 4);

  print(a * b);
  print(b * 5);

  print(a / 5);
  
  print("integer division");
  print(3 ~/ b); // integer division

  print("getting the remainder from dividing two numbers");
  print(21 % b); // getting the remainder from dividing two numbers

  int c = 10;
  int d = ++c;
  print("c: $c");
  print("d = ++c: $d");
  d = --c;
  print("d = --c: $d");

  int e = 8;
  int f = e++;
  print("e: $e");
  print("f = e++: $f");
  f = e--;
  print("f = e--: $f");


}