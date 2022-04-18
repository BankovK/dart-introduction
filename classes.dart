void main(List<String> args) {
  Person person = Person("Name2", 20);
  person.display();
  person.name = "Name1";
  person.age = 35;
  person.display();

  Person? person2;
  person2?.age =  20;
  person2?.display();
  if(person2 == null){
      print("Переменная person2 неопределена");
  }

  Person person3 = Person.undefined();
  person3.display();

  Person person4 = Person.fromName("Name3");
  person4.display();

  // Cascade notation:
  Person person5 = Person.undefined()
    ..name = "Name4"
    ..age = 36
    ..company = (Company("Huawei")
      ..country = "China"
      ..display()
    )
    ..display(); 

  ConstPersonTest constPerson = const ConstPersonTest("Name5", 23);

  GenericPerson<String> bob = GenericPerson<String>("324", "Name7");
}

class Person {
  String? name;
  int age = 0;
  Company company = Company("");
  // Person.undefined() {}
  // Also can be implemented like this:
  Person.undefined(): this(null, 0);
  // Person.fromName(String name) {
  //   this.name = name;
  //   this.age = 21;
  // }
  // Also can be implemented like this:
  Person.fromName(String name): this(name, 21);
  // Person(String n, int a)
  // {
  //   name = n;
  //   age = a;
  // }
  // Shorter version:
  Person(this.name, this.age);
  // Using initialization:
  // Person(userName, userAge): name=userName, age = userAge + 10 {
  //   print("Person created!");
  // }
  void display() {
    print("Name: $name Age: $age");
    if (this.company.title.length > 0) {
      print("is working in ${company.title}");
    }
  }
}

class Company{
  String title = "";
  String country = "";
  Company(String companyTitle){  
    title = companyTitle;
  }
  display(){
    print("Company $title form $country");
  }
}

class PersonTest{
  String name = "";
  int age = 1;
  // final minAge = 1;
  // PersonTest(n, a){
  //   this.name = n;
  //   this.age = a;
  // }
  // OR
  final minAge;
  PersonTest(this.minAge, n, a){
    this.name = n;
    this.age = a;
  }
  // OR using initializer
  // PersonTest(mAge, name, age): minAge= mAge + 1 {
  //   this.name = name;
  //   this.age = age;
  // }
}

class ConstPersonTest{
  final String name;
  final int age;
    
  // constant constructor
  const ConstPersonTest(this.name, this.age);
}

class Employee extends Person {
  double salary = 0.0;
  static int retirementAge = 60;
  // static const int retirementAge = 60;

  Employee(String name) : super.fromName(name);
  Employee.byAgeNameConstructor(String name, int age) : super(name, age);
  Employee.byNameAndSalary(String name, double salary) : super.fromName(name);

  @override
  void display(){
    super.display();
    print("Salary: $salary");
  }

  static int getRetirementAge() {
    return retirementAge;
  }
}

class Worker{
  String salary = "";
  void displaySalary(){
    print("Work in $salary");
  }
}
// OR
// mixin Worker{
//   String salary = "";
//   void displaySalary(){
//     print("Work in $salary");
//   }
// }

class Employee2 extends Person with Worker{ // with makes class work as mixin
  Employee2(name, age, sal) : super(name, age) {
    salary = sal; // salary from Worker mixin
  }
}

abstract class Figure { // abstract class
  void calculateArea(); // abstract method
}

class Rectangle extends Figure { 
  int width;
  int height;
  Rectangle(this.width, this.height);
    
  void calculateArea(){
    int area = width * height;
    print("area = $area");
  }
}

class Rectangle2 implements Figure { // Here Figure works as interface
  int width;
  int height;
  Rectangle2(this.width, this.height);

  void calculateArea(){
    int area = width * height;
    print("area = $area");
  }
}

class GenericPerson<T> {
  T id;
  String name;
  GenericPerson(this.id, this.name);
}

void genericLog<T>(T a) {
  print("${DateTime.now()} a=$a");
}

// Factory example:
class Application{
  String name;
  static Application app = Application.fromName("");

  Application.fromName(this.name);
    
  factory Application(String name) {
    if(app.name == ""){
      app = Application.fromName(name);
      print("Appl $name started");
    }
    else{ 
      // You can't access this here
      print("Appl ${app.name}: new tab opened");
    }
    return app;
  }
  void about(){
    print("Appl $name");
  }
}