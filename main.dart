void main() {
  
  //final person = Person(name: 'Andrea', age: 34, height: 1.84);
  //print(person.describe());
  final employee = Employee(name: 'Andrea', age: 34, height: 1.84, taxCode: 'AB12', salary: 50000);
  employee.sayName();
}

class Person {
  Person({this.name, this.age, this.height});
  final String name;
  final int age;
  final double height;
  
  String describe() => 
    'hello, I\'m $name. I\'m $age years old. I\'m $height meters tall';

  void sayName() => print('Hello, I\'m $name');
  
}

// below is the subclass, which 'extends' the class
class Employee extends Person {
  Employee({String name, int age, double height, this.taxCode, this.salary}) 
    : super(name: name, age: age, height: height);
  final String taxCode;
  final int salary;
}

// Object class 
// https://api.dart.dev/stable/2.12.4/dart-core/Object-class.html