/* constant constructor 상수 생성자
*   본문을 가질수 없음 - {} 추가 X
*   상수 객체는 값은 값으로 생성한 객체를 재활용할 목적으로 사용
*/

class MyClass {
  final int data1;
  const MyClass(this.data1);
}

main() {
  var obj1 = MyClass(10);
  var obj2 = MyClass(10);
  print('obj1.data : ${obj1.data1}, obj2.data: ${obj2.data1}');
  print('obj1 == obj2: ${obj1 == obj2}');

  print('*'*20);  // line break

  var obj3 = const MyClass(10);
  var obj4 = const MyClass(10);
  print('obj3.data : ${obj3.data1}, obj4.data: ${obj4.data1}');
  print('obj3 == obj4: ${obj3 == obj4}');

  print('*'*20);  // line break   

  var obj5 = const MyClass(10);
  var obj6 = const MyClass(20);
  print('obj5.data : ${obj5.data1}, obj6.data: ${obj6.data1}');
  print('obj5 == obj6 : ${obj5 == obj6}');   // const로 생성하더라도 초기값이 다르면 다른객체
}

// MyClass는 const 생성자를 가지고 있지만, obj1과 obj2는 일반 생성자를 사용하여 생성됨
// obj1과 obj2는 const로 취급되지 않음
// 그러나 클래스 내의 data1 필드는 final로 선언되어 있기 때문에 컴파일 타임에 상수로 평가됨