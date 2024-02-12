// Data type

// type : int
int? no = 10;

// main() {
//   bool? data = no?.isEven;
//   no = null;
//   Object? obj = no; // object에 대입가능!
// }

// // 문자열비교
// main() {
//   String str1 = 'hello';
//   String str2 = 'hello';

//   print(str1 == str2);
// }

// // 문자열 템플릿
// main() {
//   int no = 10;
//   String name = 'seul';

//   String myFun() {
//     return 'lee';
//   }

//   print('no: $no, name: $name, 10 + 20 : ${10+20}, myFun() : ${myFun()}');
// }

// // type casting
// main() {
//   int n1 = 10;
//   double d1 = 10.0;
//   String s1 = '10';

//   double d2 = n1; // error
//   double d2 = n1.toDouble(); // int -> double
//   String s2 = n1.toString(); // int -> str
//   int n3 = int.parse(s1);    // str -> int
// }

// // const - compile time const var
// const String data1 = 'hello'; // 선언하자마자 값 대입

// class User {
//   static const String data2 = 'hello'; // class 안에서 선언할때는 static 변수로 선언

//   void some() {
//     const String data3 = 'hello';

//     data1 = 'world'; // error! 값 변경 못함
//   }
// }

// // final - runtime const var
// final int no1;  // 초기값 선언X + 이후에도 값 대입이 없어서 error

// class MyClass {
//   final int no2; // <멤버 변수>
//   MyClass(this.no2);

//   void some() { // <멤버 함수>
//     final no3;  // 초기값 없이 선언
//     no3 = 10;   // 뒤에서 값 선언
//     //no3 = 20;   // error - 값 변경 불가
//   }

//   void main() {
//     MyClass num1 = MyClass(3);
//   }
// }


// // null safety check - !
// int? some(arg) {
//   if (arg == 10) {
//     return 0;
//   } else {
//     return null;
//   }
// }

// main() {
//   int a = some(10)!;  // null 점검
//   print("a : $a");    // 10
//   int b = some(20)!;  // null 점검
//   print("b : $b");    // error
// }