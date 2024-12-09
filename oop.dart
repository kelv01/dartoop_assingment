class Student {
  // Private properties
  String _name;
  int _age;
  double _gpa;

  // Constructor
  Student(String this._name, int this._age, double this._gpa) {
    _name = name;
    _age = age;
    _gpa = gpa;
  }

  // Getter and Setter for name
  String get name => _name;
  set name(String newName) => _name = newName;

  // Getter and Setter for age
  int get age => _age;
  set age(int newAge) => _age = newAge;

  // Getter and Setter for gpa
  double get gpa => _gpa;
  set gpa(double newGpa) => _gpa = newGpa;

  // Method to display student information
  void displayInfo() {
    print("Name: $_name");
    print("Age: $_age");
    print("GPA: $_gpa");
    print("-------------------------");
  }
}

void main() {
  Student student1 = Student("Alice", 20, 3.8);
  student1.displayInfo();

  // Using setters to modify student properties
  student1.name = "Alicia";
  student1.age = 21;
  student1.displayInfo();

  Student student2 = Student("Bob", 22, 3.5);
  student2.displayInfo();
}