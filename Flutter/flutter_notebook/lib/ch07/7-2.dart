// 추상 클래스는 객체를 생성할수 없음

abstract class User {
  // 추상클래스 멤버는 내부에 로직을 구성할 수 없음
  void some();
}

class Customer extends User {
  // @override annotation을 붙이면 추상 클래스의 멤버를 상속받는다는 의미
  @override
  void some() {} // 왜 여기에서는 로직을 구성해도 되는거지?
}

/* 인터페이스 interface
*     부모의 특징을 도구로 사용해서 새로운 특징을 만들어냄
*     다트는 interface는 지원 X -> implements만 지원
*     암시적 인터페이스 implicit interface 
*      : 인터페이스를 선언하지않아도 다른 클래스를 도구삼아 구현할수 있음 
*     - 클래스를 implements로 선언하면 다른 클래스를 인터페이스로 활용할수 있다
*/
class User1 {
  int no;
  String name;

  // 부모 클래스 생성자
  User1(this.no, this.name);
  String greet(String who) => 'Hello, $who. I am $name. no is $no';
}

class MySubClass extends User1 {
  // 부모 클래스 생성자 상속
  MySubClass(super.no, super.name);
}

// Using interface
class MyClass implements User1 {
  // 인터페이스에 선언된 모든 멤버 재정의(선언 + 초기화)
  @override
  int no = 10;
  @override
  String name = 'Lee';

  // override method of interface
  @override
  String greet(String who) {
    return 'hello';
  }
}

void main(List<String> args) {
  // 자식 클래스 객체 생성 - 부모 클래스의 생성자 호출(부모 클래스 멤버 재정의)
  MySubClass msc = MySubClass(11, 'Kim');
  // 부모 클래스의 멤버 호출
  print(msc.greet('kim'));

  // 구현 클래스 객체 생성
  MyClass mc = MyClass();
  // call overrided member of interface class - 반환값을 재정의했기 때문에 'hello'가 리턴
  print(mc.greet('lee'));
}
