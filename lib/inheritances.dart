class Person {
  String _name="";
  String city="";
  String address="";

  //Person(this.city,this._name,this.address);

  set name(String n){
    _name = n;
  }
  String get name {
     return _name;
  }

  void display(){
    print('Name : $name');
    print('City : $city');
    print('Address : $address');
  }
}

class Student extends Person {
  String course = "";
  int age = 0;

  Student(this.course, this.age);

  @override
  void display() {
    // TODO: implement display
    super.display();
    print("Course : $course");
    print("Age : $age");
  }
}

void main(){
 // Person p =  Person("Ajmer","abid","Rajasthan");
 // p._name = "Faizan";
    Student s = Student("BCA",20);
    s.display();
}
