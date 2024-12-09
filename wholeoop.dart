class Person {
  // Private properties
  String _name;
  int _age;

  // Constructor
  Person(this._name, this._age);

  // Getter and setter for _name
  String get name => _name;
  set name(String newName) {
    if (newName.isNotEmpty) {
      _name = newName;
    } else {
      print("Name cannot be empty.");
    }
  }

  // Getter and setter for _age
  int get age => _age;
  set age(int newAge) {
    if (newAge > 0) {
      _age = newAge;
    } else {
      print("Age must be positive.");
    }
  }

  // Method to display details
  void displayInfo() {
    print("Name: $_name, Age: $_age");
  }
}
class Student extends Person {
  // Private properties
  String _studentID;
  String _course;

  // Constructor
  Student(String name, int age, String studentID, String course)
      : _studentID = studentID,
        _course = course,
        super(name, age);

  // Getter and setter for _studentID
  String get studentID => _studentID;
  set studentID(String newID) {
    if (newID.isNotEmpty) {
      _studentID = newID;
    } else {
      print("Student ID cannot be empty.");
    }
  }

  // Getter and setter for _course
  String get course => _course;
  set course(String newCourse) {
    if (newCourse.isNotEmpty) {
      _course = newCourse;
    } else {
      print("Course name cannot be empty.");
    }
  }

  // Overriding the displayInfo method
  @override
  void displayInfo() {
    super.displayInfo();
    print("Student ID: $_studentID, Course: $_course");
  }

  // Method to change the course
  void changeCourse(String newCourse) {
    course = newCourse; // Using the setter here
    print("$name has changed their course to $newCourse.");
  }
}

void main() {
  // Create a Person object
  Person teacher = Person("John Doe", 35);
  teacher.displayInfo();
  print("\n");

  // Create a Student object
  Student student1 = Student("Alice Smith", 20, "S12345", "Computer Science");
  student1.displayInfo();
  print("\n");

  // Change the course using the setter
  student1.changeCourse("Data Science");
  print("\n");

  // Attempt to set invalid data
  student1.studentID = ""; // Invalid input
  student1.age = -5;       // Invalid input
  print("\n");

  // Polymorphism example
  Person student2 = Student("Bob Johnson", 22, "S67890", "Mechanical Engineering");
  student2.displayInfo(); // This calls the overridden method in Student
}
