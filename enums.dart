void main(List<String> args) {
  print(Operation.multiply); // Operation.multiply
  print(Operation.multiply.index); // 2

  Operation op;
  op = Operation.add;
  print(op);
  print(op.index);
  runOperation(1, 3, op);
}

enum Operation{
  add, 
  subtract, 
  multiply
}

void runOperation(int x, int y, Operation op) {
  int result = 0;
  switch (op) {
    case Operation.add:
      result = x + y;
      break;
    case Operation.subtract:
      result = x - y;
      break;
    case Operation.multiply:
      result = x * y;
      break;
  }

  print(result);
}