import 'dart:io';

void main(){
  // print("welcome to dart! programming lang!");
  // stdout.write('Enter your Name');
  // var name = stdin.readLineSync();
  // print("welcome, $name");
  
  print('we are learn dart programming data types ');
  int age = 23;
  double price = 10023.34;
  String name = "test user";
  bool isUser = true;
  List<String> names = ["user1","user2","user3"];

  Set<int> uniqueVal = {1,2,3,4,5};

  Map<String,int> studentMarks = {
    "Math" :60,
    "Science" : 89,
    "English" :88
  };

  String? nullVariable;

  print("Age :  $age (${age.runtimeType})");
  print("Name :  $name (${name.runtimeType})");
  print("Price :  $price (${price.runtimeType})");
  print("IsUser :  $isUser (${isUser.runtimeType})");
  print("List :  $names (${names.runtimeType})");
  print("Set :  $uniqueVal (${uniqueVal.runtimeType})");
  print("Map :  $studentMarks (${studentMarks.runtimeType})");


}