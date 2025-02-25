import 'dart:io';
void main(){
  //string input
  print("Enter Your Name : ");
  String? input = stdin.readLineSync();
  String? name = input;
  stdout.write('name : $name');

  // stdin.readLineSync() reads input as a string.
  // String? is used because readLineSync() returns a nullable string (null if no input is given).


  //integer input
  print('\nEnter you age : ');
  try {
    int age = int.parse(stdin.readLineSync()!);
    stdout.write('Age : $age (${age.runtimeType})');
  }catch(e){
    print('invalid input! please enter a valid number.');
  }
  // User input is taken as a String and converted to an int using int.parse().
  // The ! operator is used to ensure the value is not null.

  //double input
  print('\nEnter the price : ');
  double price = double.parse(stdin.readLineSync()!);
  stdout.write('Price : $price (${price.runtimeType})');
  //double.parse(input!) converts the input string to a double.

  //boolean input
  print('\nEnter a choice are you student ? (true/false) ');
  bool isStudent = stdin.readLineSync()!.toLowerCase()=="true";
  stdout.write('Student status : $isStudent ');
  // Converts user input to lowercase and checks if it is "true".

  //list input
  print("Enter space-seperated numbers:  ");
  List<int> numbers = stdin.readLineSync()!.split(' ').map(int.parse).toList(); //convert to list integer
  print("Numbers entered: $numbers");
  // split(' ') breaks the input string into a list.
  // map(int.parse) converts each value to an integer.
}