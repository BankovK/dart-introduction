void main(List<String> args) {
  Future<void> future = getMessage();
  print("Running...");

  Future<String> future2 = Future(() {
    return "Future result";
  });

  future.then((_) => {});
  future2.then((value) => print(value));

  Future<String> future3 = Future(() {
    print("Running Future");
    // return "Future result3";
    throw "error";
  });
    
  future3.then((value) {
    print("Future value: $value");
    return 20;
  })
  .catchError(
    (err) {
      print(err);
      return 5;
    }, test: (err) {
      return err is String;
    }
  )
  .then((value) => print("Result: $value") )
  .whenComplete(() { print("Running Future is over."); });
}

Future<void> getMessage() async {
  String text;
  try{
    // text = await Future.delayed(Duration(seconds: 1), () => "Message text");
    text = await Future.delayed(Duration(seconds: 1), () => throw "404");
    print("Got message: $text");
  }
  catch(e){
    print("Got error: $e");
  }
}