import 'dart:io';

void main(){
  // List<int> numbers = List.filled(5, 0);
  // print(numbers);
  // for(int i=0;i<numbers.length;i++){
  //   print('\nEnter a value at index $i : ');
  //   numbers[i] = int.parse(stdin.readLineSync()!);
  // }
  // print(numbers);


  /*
    Common List Operations
    Operation	Method	Example
    Add element	add(value)	list.add(5);
    Add multiple	addAll([...])	list.addAll([6, 7, 8]);
    Insert at index	insert(index, value)	list.insert(1, 10);
    Remove element	remove(value)	list.remove(3);
    Remove at index	removeAt(index)	list.removeAt(1);
    Check length	length	print(list.length);
    Sort list	sort()	list.sort();
    Reverse list	reversed	list.reversed.toList();
  */

  List<int> numbs = [1,5,-2,4];
  numbs.add(5);
  print(numbs);
  numbs.addAll([4,561,92]);
  print(numbs);
  numbs.insert(3,20);
  print(numbs);
  numbs.remove(3);
  print(numbs);
  numbs.removeAt(2);
  print(numbs);
  numbs.forEach((num) => print(num));

  var filteredList = numbs.where((num) => num > 20).toList();
  print(filteredList);


  List<String> fruits = ["Apple", "Banana", "Mango"];

  fruits.add("Orange"); // Adds an element
  fruits.remove("Banana"); // Removes an element

  print(fruits); // Output: [Apple, Mango, Orange]
}