/* 상속 inheritance 
*     클래스를 재활용하는 객체지향 프로그래밍 핵심 기능
*     상속받은 클래스의 멤버를 이용
*     extends 예약어 : 다른 클래스 상속 받으려면 
*  오버라이딩 overriding
*     부모 클래스에 선언된 멤버를 자식클래스에서 재정의해서 사용
*/

// class SuperClass {
//   int myData = 10;
//   void myFun() {
//     print('Super..myFun()...');
//   }
// }

// class SubClass extends SuperClass {
//   int myData = 20;
//   void myFun() {
//     super.myFun();
//     print('Sub..myFun()..myData: $myData, super.myData : ${super.myData}');
//   }
// }

// main(List<String> args) {
//   var obj = SubClass();
//   obj.myFun();
//   print('obj.data : ${obj.myData}');
// }


// // SuperClass is a base class with two constructors
// class SuperClass {
//   // Constructor with a parameter 'arg'
//   SuperClass(int arg) {}

//   // Named constructor 'first'
//   SuperClass.first() {}
// }

// // SubClass extends SuperClass.
// class SubClass extends SuperClass {
//   // Constructor for SubClass calling the superclass constructor with an argument
//   SubClass() : super(10) {}

//   // Named constructor 'name' for SubClass 
//   //  calling the superclass named constructor 'first'
//   SubClass.name() : super.first() {}
// }

// void main() {
//   SubClass obj1 = SubClass();      // Calls SuperClass(int arg) with arg=10
//   SubClass obj2 = SubClass.name(); // Calls SuperClass.first()
// }


// test
class SuperClass {
  // Default constructor of SuperClass.
  SuperClass() {}

  // Named constructor 'first' of SuperClass.
  SuperClass.first() {}

  // Method 'someMethod' in SuperClass
  void someMethod() {
    print('some method in SuperClass');
  }
}

class SubClass extends SuperClass {
  // SubClass constructor that calls the default constructor of SuperClass using super().
  SubClass() : super() {}

  // Override 'someMethod' from Superclass
  @override
  void someMethod() {
    print('Some method in SubClass');
  }
}
 
void main() {
  SubClass obj = SubClass(); // Calls SuperClass() implicitly via super()
  obj.someMethod();          // Calls overrideen method in SubClass
}
