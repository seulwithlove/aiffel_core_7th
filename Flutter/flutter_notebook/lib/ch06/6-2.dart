// // 생성자와 멤버 초기화
// class User {
//   late String name;
//   late int age;

//   // User(String name, int age) {   // 생성자
//   //   this.name = name;
//   //   this.age = age;
//   // }

//   // User(this.name, this.age); // 생성자 : this 예약어 사용

//   User(String name, int age)  // 생성자 : initializer list 사용
//     : this.name = name, 
//       this.age = age {}

//   sayHello() {
//     print('name: $name, age: $age');
//   }
// }


// // 생성자 선언 - 초기화 목록 initiaizer list
// class MyClass {
//   late int data1;
//   late int data2;

//   MyClass(List<int> args)
//     : this.data1 = args[0],
//       this.data2 = args[1] {}
// }


// 클래스 멤버 함수의 반환값으로 초기화
class MyClass {
  late int data1;
  late int data2;

  MyClass(int arg1, int arg2)
    : this.data1 = calFun(arg1),
      this.data2 = calFun(arg2) {}

  static int calFun(int arg) {
    return arg * 10;
  }

  printData() {
    print('$data1, $data2');
  }
}

void main() {
  MyClass myObject = MyClass(5, 8);
  myObject.printData();  // 출력: 50, 80
}
