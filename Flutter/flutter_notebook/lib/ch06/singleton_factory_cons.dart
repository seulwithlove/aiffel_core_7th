// Singleton 싱글톤을 구현한 Logger 클래스
//    애플리케이션에서 단일 인스턴스만 존재하도록 보장하는 패턴

class Logger {
  static final Logger _instance = Logger._internal();

  Logger._internal();  // private constructor

  factory Logger() {
    return _instance;
  }

  void log(String message) {
    print('Log: $message');
  }
}

void main() {
  Logger logger1 = Logger();
  Logger logger2 = Logger();

  print(identical(logger1, logger2));  // 출력: true

  logger1.log('Message from logger1');
  logger2.log('Message from logger2');
}