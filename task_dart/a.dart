
abstract class Role {
  void displayRole();
}

class Student implements Role {
  @override
  void displayRole() {
    print("I am a Student");
  }

}

class Teacher implements Role {
  @override
  void displayRole() {
    print("He is a Teacher");
  }

}

void main() {
  var student = Student();
  var teacher = Teacher();

 
  student.displayRole();
  teacher.displayRole(); 
}
