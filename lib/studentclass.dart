class Student{
  String name ="Aabid";
  int age = 24;
  String course = "MCA";
  String address = "Ajmer";
  String _city = "";
  //default constructor
  Student(this.name,this.age,this.course,this.address);

  //named constructor
  Student.namedConstructor(this.name);


  set city(String c){
    _city = c;
  }

  String get city {
    return _city;
  }



  void display(){
    print("Student Name : $name");
    print("Student Age : $age");
    print("Student Course : $course");
    print("Student Address : $address");
  }


}

void main(){
  Student st = Student("faizan",21,"BCA","Kishanghar");
  Student st1 = Student("Ravi",19,"BCA","Pushkar");
  Student st2 = Student.namedConstructor("Aabid");
  st.display();
  st1.display();
  st2.display();
  st2.city = "Kashmir";
  print(st2.city);

}