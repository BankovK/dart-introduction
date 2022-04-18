void main() {
  String str1 = "String1";
  print(str1);
  dynamic name = 'Name1';
  print(name);

  const a = 1;
  const int b = 2;
  final int c = 3;
  final d = 4;
  print("a:$a b:$b c:$c d:$d");

  var multiline = """
  Многострочная
  строка
  """;
  print(multiline);

  Runes input = Runes("\u041F\u0440\u0438\u0432\u0435\u0442");
  Runes text = Runes("Привет");
  print(text);
  print(String.fromCharCodes(input));
  print(String.fromCharCodes(text));
}