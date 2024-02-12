/* named constructor 
*   한 클래스에서 이름이 다른 여러개 생성자를 생성하하는 기법
*   오버로딩 지원X
*/

// // named constructor
// class MyClass {
//   MyClass(){}
//   MyClass.first(){}
//   MyClass.second(){}
// }

// var obj1 = MyClass();
// var obj2 = MyClass.first();
// var obj3 = MyClass.second();

// this() : call other constructor
class MyClass {
  late int data1;
  late int data2;

  MyClass(this.data1, this.data2);
  MyClass.first(int arg) : this(arg, 0);  // 기본 생성자 MyClass 호출
  MyClass.second() : this.first(0);       // named constructor MyClass.first 호출
}
