void main(List<String> args) {
  double getPow(double d, [int pow = 2]) {
    double result = d;
    int i = 1;
    while (i < pow) {
      result *= d;
      i++;
    }
    return result;
  }

  double d1 = 4.4;
  print("Square of $d1 is ${getPow(d1)}");

  d1 = 2.0;
  print("Square of $d1 is ${getPow(d1, 4)}");

  print("-------------------------------");
  showPerson("Name1", 30);
  print("-------------------------------");
  showPerson("Name2");

  print("-------------------------------");
  showPerson2(name: "Name3", age: 30);
  print("-------------------------------");
  showPerson2(age: 25, name: "Name4");
  print("-------------------------------");
  showPerson2(name: "Name5");

  print("-------------------------------");
  callFunction(showPerson2); // Passing function like object

  print("-------------------------------");
  Function sum = (a, b) => a + b;
  print(sum(4, 8));

  print("-------------------------------");
  sum = (int a, int b)
    {
      print("Sum of $a and $b");
      return a + b;
    };
  print(sum(4, 10));

  print("-------------------------------");
  print(getOperationResult(1, 4, (a, b) => a + b));

  print("-------------------------------");
  print("closure:");
  Function fn = outer(); // fn = inner
  // calling inner
  fn(); // 6
  fn(); // 7
  fn(); // 8
  // n remembers it's value!

  print(multiply(5)(6));
}

void showPerson(String userName, [int? age]) {
  final String name = userName; // Not const because const should be defined at compilation
  print("Name: $name");
  if(age != null){
    print("Age: $age");
  }
}

void showPerson2({String name = "undefined", int age = 0}){
    print("Name: $name");
    print("Age: $age");
}

void callFunction(Function func) {
  func();
}

int getOperationResult(int a, int b, Function operation){
  return operation(a, b);
}

Function outer() { // outer function
  var n = 4;
  void inner() { // inner function
    n++;
    print(n);
  }
  return inner;
}
// Shorter alternative:
// Function outer() {
//   var n = 5;
//   return () {
//     n++;
//     print(n);
//   };
// }
Function multiply(int n){
    return (int m) => n * m;
}