void main(){
  greet();
  getUser("Aabid");
  int res = add(5,4);
  print('Addition : $res');
  showInfo("abid","ajmer");
  displayInfo(name: "Shabir", age: 25);
  print(multiply(4,5));

  var numbers = [1,2,3,4];
  numbers.forEach((val){
    print(val * 2);
  });

  executeFunction(sum, 10,20);
}
int sum(int x,int y) => x+y;
int multiply(int a,int b) => a*b;

void displayInfo({required String name, int? age}) {
  print("Name: $name");
  if (age != null) {
    print("Age: $age");
  }
}
void greet(){
  print('Hello Student welcome to dart language classes!');
}

void getUser(String name){
  print('user name is : $name');
}

int add(int a,int b){
  return a+b;
}

void showInfo(String name,[String? city]){
  print("name $name, and city : $city");
  if(city!=null){
    print("City:$city");
  }
}


void executeFunction(Function operation, int a,int b){
  print(operation(a,b));
}

/*
    Types of Functions in Dart
    Basic Function
    Function with Parameters
    Function with Return Value
    Optional Parameters
    Named Parameters
    Arrow Function
    Anonymous Function (Lambda Expression)
    Higher-Order Function (Passing Function as Argument)
*/


