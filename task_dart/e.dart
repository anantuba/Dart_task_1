abstract class Role {
  void displayRole();
}


abstract class Student {
  void setDetails(String name, int age, String address, List<double> scores);
  double calculateAverage();
}


abstract class Teacher {
  void setDetails(String name, int age, String address, List<String> courses);
}


class StudentManagementSystem implements Role {
  @override
  void displayRole() {

  }
}

class StudentImpl implements Student, Role {
  late String name;
  late int age;
  late String address;
  late List<double> scores;

  @override
  void setDetails(String name, int age, String address, List<double> scores) {
    this.name = name;
    this.age = age;
    this.address = address;
    this.scores = scores;
  }

  @override
  double calculateAverage() {
    if (scores.isEmpty) return 0.0;
    double total = scores.reduce((value, element) => value + element);
    return total / scores.length;
  }

  @override
  void displayRole() {
    print('Student Information:');
    print('Role: Student');
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
    print('Average Score: ${calculateAverage()}');
  }
}

class TeacherImpl implements Teacher, Role {
  late String name;
  late int age;
  late String address;
  late List<String> courses;

  @override
  void setDetails(String name, int age, String address, List<String> courses) {
    this.name = name;
    this.age = age;
    this.address = address;
    this.courses = courses;
  }

  @override
  void displayRole() {
    print('Teacher Information:');
    print('Role: Teacher');
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
    print('Courses Taught:');
    for (var course in courses) {
      print('- $course');
    }
  }
}

void main() {
  var student = StudentImpl();
  student.setDetails('John Doe', 20, '123 Main St', [90, 85, 82]);
  student.displayRole();

  var teacher = TeacherImpl();
  teacher.setDetails('Mrs. Smith', 35, '456 Oak St', ['Math', 'English', 'Bangla']);
  teacher.displayRole();
}
