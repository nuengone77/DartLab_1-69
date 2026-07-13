Stream<dynamic> countdown(int from) async* {
  for (int i = from; i > 0; i--) {

    yield i;
    
    await Future.delayed(Duration(seconds: 1));
  }
  
  yield "หมดเวลา!";
}

void main() async {
  print("--- เริ่มการนับถอยหลัง ---");

  Stream<dynamic> myStream = countdown(5);

  await for (var data in myStream) {
    print(data);
  }

  print("--- จบการทำงาน ---");
}