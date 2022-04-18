void main(List<String> args) {
  int a = 6;
  int b = 4;
  if (a > b) {
    print("First is greater than second.");
  } else if (a < b) {
    print("First is less than second.");
  } else {
    print("First is equal to second.");
  }

  if (a > b && a < 7) {
    print("First is greater than second but less than 7.");
  }

  switch(a) {
    case 1:
      print("Number is 1");
      break;
    case 8:
      print("Number is 8");
      a++;
      break;
    case 9:
      print("Number is 9");
      break;
    default:
      print("Number is not 1, 8 or 9");
  }

  int num = 3;
  int output = 0;
  switch(num){
    case 1: 
      output = 3;
      break;
    case 2: 
    case 3: 
    case 4: 
      output = 6;
      break;
    case 5: 
      output = 12;
      continue N9; // as alternative to break we can redirect to N9 using continue
    N9: case 9: 
      print("Number is 9");
      break;
    default:
      output = 24;
  }
  print(output);

  int c = a < b
    ? (a + b)
    : (a - b);
  print(c);
}