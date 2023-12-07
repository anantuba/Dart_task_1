abstract class Role {
  void performRoleAction();
}

class StudentRole implements Role {
  @override
  void performRoleAction() {
    print('Student is doing class.');
  }
}

class TeacherRole implements Role {
  @override
  void performRoleAction() {
    print('Teacher is teaching.');
  }
}

class Person {
  String name;
  int age;
  String address;
  Role role;

  Person(this.name, this.age, this.address, this.role);

  String getName() {
    return name;
  }

  int getAge() {
    return age;
  }

  String getAddress() {
    return address;
  }

  void performRoleAction() {
    role.performRoleAction();
  }
}

void main() {

  Role studentRole = StudentRole();
  Role teacherRole = TeacherRole();

  Person student = Person('John Doe', 20, '123 Main St', studentRole);
  Person teacher = Person('Mrs. Smith', 35, '456 Oak St', teacherRole);

  print('Student: ${student.getName()}, ${student.getAge()}, ${student.getAddress()}');
  print('Teacher: ${teacher.getName()}, ${teacher.getAge()}, ${teacher.getAddress()}');

  student.performRoleAction(); 
  teacher.performRoleAction(); 
}
