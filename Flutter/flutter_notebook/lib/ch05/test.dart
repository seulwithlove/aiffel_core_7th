// String _name = 'Hello';

// String get name {  // getter
//   return _name.toUpperCase();
// }

// set name(value) {  // setter
//   _name = value;
// }

// main(List<String> args) {
//   name = 'World';  // setter 호출
//   print('name: $name');
// }



///// 타입 확인, 캐스팅
// class User {
//   void some() {
//     print("User...some()...");
//   }
// }

// main() {
//   Object obj = User();
//   // obj.some();  // error - Object 타입으로 선언된 변수는 해당 타입의 메서드를 직접 호출 못함

//   if (obj is User) {  // is 키워드로 타입 확인 + 자동 형 변환
//     obj.some();
//   }

//   Object obj1 = User();
//   (obj1 as User).some(); // as 명시적 형 변환
// }



// //// cascade 연산자 `..` `?..` : 객체 이름 생략하고 반복해서 접근 
// /// .. : nunnull 객체일 경우
// /// ?.. : nullable 객체일 경우
// // 클래스 선언
// class User{
//   String? name;
//   int? age;

//   some() {
//     print('name: $name, age: $age');
//   }
// }

// // 객체 생성해서 멤버 접근
// var user = User(); 
// user.name = 'seul';  
// user.age = 10;
// user.some();

// // 캐스케이드 연산자 사용
// User()
//   ..name = 'seul'
//   ..age = 30
//   ..some();


/* 5-7 */
//// for loop and in
// [for loop]
// main(){
//   var list = [10, 20, 30];
//   for(var i = 0; i < list.length; i++){   // for loop
//     print(list[i]);
//   }
// }

// [in] : 명시한 컬렉션 타입의 데이터 개수만큼 반복해서 실행
// main() {
//   var list = [10, 20, 30];
//   for(var x in list){
//     print(x);
//   }
// }


//// try~on~finally Exception handling
some() {
  throw FormatException('my exception');
}

main(List<String> args){
  try {
    print('step1');
    some();  // throw 있어서 try 함수 종료
    print('step2');
  } on FormatException {
    print('step3');
  } on Exception {
    print('step4');
  } finally {
    print('step5');
  }
  print('step6');
}