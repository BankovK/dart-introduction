void main(List<String> args) {
  int a = 10;
  int b = 4;
  bool c = a == b;
  bool d = a == 10;
  print("a == b: $c");
  print("a == 10: $d");
  c = a != b;
  d = a != 10;
  print("a != b: $c");
  print("a != 10: $d");
  c = a < b;
  d = a > b;
  print("a < b: $c");
  print("a > b: $d");
  c = 10 >= 10;
  print("10 >= 10: $c");
  c = 10 >= 4;
  print("10 >= 4: $c");
  c = 10 >= 20;
  print("10 >= 20: $c");

  c = false | true; // OR
  print("false | true: $c");
  c = false || true; // OR (doesn't go to second argument if the first one is true)
  print("false || true: $c");
  c = false ^ true; // OR except (true ^ true) = false
  print("false ^ true: $c");
  c = true & true; // AND
  print("true & true: $c");
  c = true && true; // AND (doesn't go to second argument if the first one is false)
  print("true && true: $c");
  c = !false; // NOT
  print("!false: $c");
}