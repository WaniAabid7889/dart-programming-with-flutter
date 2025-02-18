import 'dart:io';

void main(){
  // print('Enter a first number: ');
  // String? input = stdin.readLineSync();
  // int a = int.parse(input!);
  //
  // print('\nEnter a second number : ');
  // int b = int.parse(stdin.readLineSync()!);
  // print('\nYou entered: $a');
  // print('\nYou entered: $b');

  // print('\nEnter an operator (+, -, *, /) : ');
  // String? opt = stdin.readLineSync();
  // //Arithmetic operators
  //
  // switch(opt) {
  //   case '+': print('Addition : ${a + b}'); break;
  //   case '-': print('Subtraction : ${a - b}'); break;
  //   case '*': print('Multiplication : ${a * b}'); break;
  //   case '/': print('Division : ${a / b}'); break;
  //   default : print('invalid choice');
  // }

  // Relational operators (==,!=,>,<,>=,<=)
  //
  // print(a==b);
  // print(a!=b);
  // print(a>b);
  // print(a<b);
  // print(a<=b);
  // print(a>=b);
  //
  //
  // //logical operators
  // print('\nEnter a bool Value first !');
  // bool x = stdin.readLineSync()!.toLowerCase()=="true";
  // print('\nEnter a bool Value second !');
  // bool y = stdin.readLineSync()!.toLowerCase()=="true";
  //
  // print(x && y);
  // print(x || y);
  // print(!x);
  //
  // //Bitwise Operators (&)
  //
  // print('\nEnter a first value !');
  // int num = int.parse(stdin.readLineSync()!);
  //
  // print('\nEnter a second value !');
  // int num2 = int.parse(stdin.readLineSync()!);
  // print(num & num2);
  
  //Type Test
  // is Checks if object is of a specific type exp : x is int
  // is! Checks if object is NOT of a specific type exp : x is! String


  print('\nEnter a String : ');
  String? st = stdin.readLineSync();
  print(st is String);
  print(st is! int);

  //Conditional
  print('\nEnter a first value !');
  int num = int.parse(stdin.readLineSync()!);

  print('\nEnter a second value !');
  int num2 = int.parse(stdin.readLineSync()!);

  int res = num > num2 ? num : num2 ;

  print('max number is $res');

  //Null-aware

  //??	Returns left operand if not null, otherwise right operand	a ?? b
  //??=	Assigns value only if the variable is null	a ??= 10

  String? name;

  print(name ?? "Guest"); // Output: Guest

  name ??= "John";
  print(name); // Output: John



}