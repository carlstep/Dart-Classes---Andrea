
void main() {
  
  final employee = Employee(name: 'Andrea', age: 34, height: 1.84, taxCode: 'AB12', salary: 50000);
  employee.sayName();
  print(employee.toString());
}

class Person {
  Person({this.name, this.age, this.height});
  final String name;
  final int age;
  final double height;
  
  @override
  String toString() => 'name: $name, age: $age';
  String describe() => 
    'hello, I\'m $name. I\'m $age years old. I\'m $height meters tall';

  void sayName() => print('Hello, I\'m $name');
  
}

// below is the subclass(Employee), which 'extends' the super-class(Person)
class Employee extends Person {
  Employee({String name, int age, double height, this.taxCode, this.salary}) 
    : super(name: name, age: age, height: height); // these values are added to the sub-class (employee) 'super-class' - Person
  final String taxCode;
  final int salary;
  
  @override
  String toString() => '${super.toString()}, taxCode: $taxCode, salary: $salary';
}

// Object class 
// https://api.dart.dev/stable/2.12.4/dart-core/Object-class.html