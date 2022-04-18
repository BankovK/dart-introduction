void main(List<String> args) {
  for (int i = 0; i < 10; i++) {
    print("Square of $i is ${i * i}");
  }

  print("-------------------------------");

  int i = 1;
  for (; i<9;){
    print("Square of $i is ${i * i}");
    i++;
  }

  print("-------------------------------");

  int n = 10;
  for(int i = 0, j = n - 1; i < j; i++, j--){   
    print(i * j);
  }

  print("-------------------------------");

  int j = 0;
  do {
    print(j);
    j--;
  } while (j > 0);

  print("-------------------------------");

  j = 10;
  while (j > 0){
    print(j);
    j--;
  }

  print("-------------------------------");

  for (int i = 0; i < 10; i++){
    if (i == 5) break;
    print(i);
  }

  print("-------------------------------");

  for (int i = 0; i < 10; i++){
    if (i == 5) continue;
    print(i);
  }
}