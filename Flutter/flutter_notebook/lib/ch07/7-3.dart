/* mixin 믹스인
*     다중 상속 기능을 사용할수 있음
*     클래스를 상속하지 않고 믹스인에 선언한 멤버를 다른 클래스에서 사용할수 있음 
*      : with 예약어 사용
*     클래스가 아니기 때문에 생성자, "객체 선언 불가" ? , "나머지 멤버는 선언 가능?""
*/

mixin MyMixin {
  int mixin_data = 10;
  static int mixin_data2 = 20;

  void mixinFunc() => print('MyMixin... myFunc1()...');
}

class MySuper {
  int super_data = 20;

  void superFunc() => print('MySuper... superFunc()...');
}

class MyClass extends MySuper with MyMixin {
  void sayHello() {
    print('class data: ${super_data}, mixin data: ${mixin_data}');
    // 믹스인 멤버 메서드 호출
    mixinFunc();
    // 부모 클래스 멤버 메서드 호출     => ? 멤버? 인스턴스?
    superFunc();
  }
}