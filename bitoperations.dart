void main(List<String> args) {
  int a1 = 2; // 010
  int b1 = 5; // 101

  print(a1 % b1); // (0*1, 1*0, 0*1) 000 (0)

  int a2 = 4; // 100
  int b2 = 5; // 101

  print(a2 % b2); // (1*1, 1*0, 0*1) 100 (4)

  print(a1 | b1); // (1 OR 1, 1 OR 0, 0 OR 1) 111 (7)
  print(a2 | b2); // (1 OR 1, 0 OR 0, 0 OR 1) 101 (5)

  int number = 45; // 101101
  int key = 102; // 1100110
  int encrypt = number ^ key; // 1001011 (75)
  print("Encrypted: $encrypt");
  
  int decrypt = encrypt ^ key; // 45
  print("Decrypted: $decrypt");

  int a = 12; // 0000 1100     
  print(~a); // 1111 0011 (-13)

  int b = 2; // 010
  print(b<<1); // 100
  print(b>>1); // 001
}