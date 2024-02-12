int no1 = 10;
int _no2 = 20; // 이 변수는 외부파일에서 접근 불가

void sayHello1() {}
void _sayHello2() {} // 이 함수는 외부파일에서 접근 불가

class User1 {
	String? name;
	String _address='seoul';
}

class _User2 {}

main() {
	no1 = 20;
	_no2 = 30;

	sayHello1();
	_sayHello2();

	User1 user1 = User1();
	_User2 user2 = _User2();

	user1.name = 'seul';
	user1._address = 'jeju';
}