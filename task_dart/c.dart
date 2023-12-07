abstract class Role {
  void displayRole();
}


class Person {
  String name;
  int age;

  Person(this.name, this.age);
}


abstract class StudentActions {
  double calculateAverageScore();
}


class Student extends Person implements Role, StudentActions {
  String studentID;
  String grade;
  List<double> courseScores = [];

  Student(String name, int age, this.studentID, this.grade) : super(name, age);

  @override
  void displayRole() {
    print("Role: Student");
  }

  void addCourseScore(double score) {
    courseScores.add(score);
  }

  @override
  double calculateAverageScore() {
    if (courseScores.isEmpty) return 0.0;
    
    double sum = courseScores.reduce((value, element) => value + element);
    return sum / courseScores.length;
  }
}

void main() {
 
  Student student = Student("John Doe", 20, "123 Main St", "A");

  student.addCourseScore(85.0);
  student.addCourseScore(92.5);
  student.addCourseScore(78.0);


  student.displayRole();
  print("Average Score: ${student.calculateAverageScore()}");
}
