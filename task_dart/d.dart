abstract class Role {
  void displayRole();
}


class Person implements Role {
  late String name;
  late int age;
  late String address;

  Person(this.name, this.age, this.address);

  @override
  void displayRole() {
    print('Role: Unknown');
  }
}


class Student extends Person {
  late double averageScore;

  Student(String name, int age, String address, this.averageScore)
      : super(name, age, address);

  @override
  void displayRole() {
    print('Role: Student');
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
    print('Average Score: $averageScore');
  }
}


class Teacher extends Person {
  late String teacherID;
  late List<String> coursesTaught;

  Teacher(String name, int age, String address, this.teacherID)
      : coursesTaught = [],
        super(name, age, address);

  void addCourseTaught(String course) {
    coursesTaught.add(course);
  }

  @override
  void displayRole() {
    print('Role: Teacher');
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
    print('Courses Taught:');
    for (var course in coursesTaught) {
      print('- $course');
    }
  }
}

void main() {
  
  var student = Student('John Doe', 20, '123 Main St', 89.0);
  student.displayRole();

  print('\n');


  var teacher = Teacher('Mrs. Smith', 35, '456 Oak St', 'TID123');
  teacher.addCourseTaught('Math');
  teacher.addCourseTaught('English');
  teacher.addCourseTaught('Bangla');
  teacher.displayRole();
}
