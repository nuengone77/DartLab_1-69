//Future return 1 value
Future<int> fetchUserAge() async{
  return Future.delayed(Duration(seconds: 2), () => 21);
}

Future<String> fetchUserName() async{
  return Future.delayed(Duration(seconds: 3), () => 'nanthit');
}

//Steam Sequence of Values
Stream<String> getUserName() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 'Mark';
  await Future.delayed(Duration(seconds: 1));
  yield 'John';
  await Future.delayed(Duration(seconds: 1));
  yield 'Smith';
}
void main() async{
  print('Loading Data...');
  String name = await fetchUserName();
  int age = await fetchUserAge();
  print('your name is: $name and age is: $age');

  await for (String name in getUserName()){
    print(name);
  }
}