/* Casting
* Downcasting : 객체를 더 구체적인 자료형으로 형 변환
*   - 상위클래스나 부모 클래스에서 하위 클래스나 자식 클래스로 형 변환
*   - as 키워드 사용
*
*
*/

class Animal {
  void makeSound() {
    print("Generic Animal Sound");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Meow");
  }

  void climb() {
    print("Cat is climbing");
  }
}

main() {
  Animal animal = Cat(); // 업캐스팅
  // animal.climb(); // 에러 - Animal 클래스에는 climb 메서드가 없음

  // 다운캐스팅
  if (animal is Cat) {
    Cat cat = animal as Cat;
    cat.climb(); // 다운캐스팅 이후에는 climb 메서드 호출 가능
  }
}
