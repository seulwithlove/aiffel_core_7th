/* Quest 1 - Pomodoro Timer
* 1초에 1개씩 시간 출력
* 작업시간, 휴식시간 구분
* 25분 작업, 5분 휴식을 1 사이클
* 단, 4회차는 25분 작업, 15분 휴식
* Timer.periodic 로 시간 측정 
*/

/* 총 5회 사이클 가진 타이머 */

// import 

// void main() {
//   Timer t = Timer(Duration(seconds: 1), () {
//     print('passed 2 sec'); // 출력 안 됨
//   });
//   t.cancel();  // 곧바로 취소되어 출력 안 됨
// }


// import 'dart:async';

// void periodicTask(Timer timer) {
//   // 주기적으로 실행되어야 하는 작업
//   print('주기적인 작업 실행');
// }

// void startPeriodicTask(Duration duration) {
//   // 주기적인 작업을 실행하는 함수
//   periodicTask(Timer.periodic(duration, periodicTask));
// }

// // 1초마다 작업을 실행
// main(){
// startPeriodicTask(Duration(seconds: 1));
// }


/*************************************************************** */
// import 'dart:async';

// void countdownTask(Timer timer) {
//   var secondsLeft = timer.tick * Timer.periodic.inSeconds;
//   print('${secondsLeft}초 남음');

//   if (secondsLeft == 0) {
//     timer.cancel();
//     print('타이머 종료');
//   }
// }

// void startCountdown(Duration duration) {
//   int totalSeconds = duration.inSeconds;
//   int tickInterval = 1;
//   Timer.periodic(Duration(seconds: tickInterval), countdownTask);
// }

// main() {
// // 25분(1500초)에서부터 카운트다운 시작
// startCountdown(Duration(minutes: 25));
// }

/************************************************* */
// // 참고소스 : 초 줄이기
// int timeLeftSec = 5;
// int timeLeftMilSec = 5000;

// onPressed: (){
//    Timer.periodic(Duration seconds: 1), (timer){
//       if(timeLeftSec > 0){
//          timeLeftSec--;
//       }else{
//          timer.cancel();
//       }
//    }

//    Timer.periodic(Duration milliseconds: 1), (timer){
//       if(timeLeftMilSec > 0){
//          timeLeftMilSec--;
//       }else{
//          timer.cancel();
//       }
//    }
// }

// import 'dart:async';
// import 'package:flutter_test/flutter_test.dart';

// void main() {

//   test('timers', () async {
//     int timeLeftMin = 25;
//     int timeLeftSec = 60;

//     print('${DateTime.now()} Start');

//     Timer.periodic(const Duration(minutes: 1), (timer) {
//       if (timeLeftMin > 0) {
//         timeLeftMin--;
//         print('${DateTime.now()} minutes... $timeLeftMin');
//       } else {
//         print('${DateTime.now()} minutes done');
//         timer.cancel();
//       }
//     });

//     Timer.periodic(const Duration(seconds: 1), (timer) {
//       if (timeLeftSec > 0) {
//         timeLeftSec--;
//       } else {
//         print('${DateTime.now()} ms done');
//         timer.cancel();
//       }
//     });
//     await Future.delayed(Duration(seconds: 10));
//   });
// }

/************************************************** */
// import 'dart:async';

// void countdownTask(Timer timer) {
//   var secondsLeft = timer.tick * (Timer.periodic.inMilliseconds ~/ 1000);
//   //var remainingSeconds = timer.duration.inSeconds - secondsLeft;
//   var remainingSeconds =  Timer.periodic(const Duration(seconds: 1) - secondsLeft;
//   var minutes = remainingSeconds ~/ 60;  // 몫만 가져옴
//   var seconds = remainingSeconds % 60;
//   print('${minutes}분 ${seconds}초 남음');

//   if (remainingSeconds == 0) {
//     timer.cancel();
//     print('타이머 종료');
//   }
// }

// void startCountdown(Duration duration) {
//   int totalSeconds = duration.inSeconds;
//   int tickInterval = 1;
//   Timer.periodic(Duration(seconds: tickInterval), countdownTask);
// }

// main() {
// // 25분(1500초)에서부터 카운트다운 시작
// startCountdown(Duration(minutes: 25));
// }

/******************************************************************** */
// import 'dart:async';

// void countdownTask(Timer timer) {
//   var secondsLeft = timer.tick * Timer.periodic.inSeconds;
//   print('${secondsLeft}초 남음');

//   if (secondsLeft == 0) {
//     timer.cancel();
//     print('타이머 종료');
//   }
// }

// void startCountdown(Duration duration) {
//   int totalSeconds = duration.inSeconds;
//   int tickInterval = 1;
//   Timer.periodic(Duration(seconds: tickInterval), countdownTask);
// }

// main() {
// // 25분(1500초)에서부터 카운트다운 시작
// startCountdown(Duration(minutes: 25));
// }

/********************************************************** */
// import 'dart:async';

/* 원본 */
// void main() {
//   const duration = Duration(minutes: 1); // 25분

//   int secondsRemaining = duration.inSeconds;

//   Timer.periodic(Duration(seconds: 1), (timer) {
//     if (secondsRemaining > 0) {
//       secondsRemaining--;
//       print('${secondsRemaining ~/ 60}분 ${secondsRemaining % 60}초 남음');
//     } else {
//       timer.cancel();
//       print('타이머 종료');
//     }
//   });
// }

// void main() {

//   const work_time = Duration(minutes: 25); // 작업시간 25분
//   const rest_time = Duration(minutes: 5);  // 휴식시간 5분

//   var w_secondsRemaining = work_time.inSeconds;
//   var r_secondsRemaining = rest_time.inSeconds;

//   Timer.periodic(Duration(seconds: 1), (timer) {
//     if (w_secondsRemaining > 0) {
//       w_secondsRemaining--;
//       print('flutter ${w_secondsRemaining ~/ 60} : ${w_secondsRemaining % 60}');
//     } 
//     else if {
//       timer.cancel();
//       print('flutter: 작업시간이 종료되었습니다. 휴식 시간을 시작합니다');
//     } 
//      else if (w_secondsRemaining == 0 & r_secondsRemaining > 0) {
//       r_secondsRemaining--;
//       print('flutter ${r_secondsRemaining ~/ 60} : ${r_secondsRemaining % 60}');
//       }
//     }
//   };
  
//   const rest_time = Duration(minutes: 5); // 작업시간 25분

//   var r_secondsRemaining = rest_time.inSeconds;

//   Timer.periodic(Duration(seconds: 1), (timer) {
//     if (r_secondsRemaining > 0) {
//       r_secondsRemaining--;
//       print('flutter ${r_secondsRemaining ~/ 60} : ${r_secondsRemaining % 60}');
//     } else {
//       timer.cancel();
//       print('flutter: 시간이 종료되었습니다. 휴식 시간을 시작합니다');
//     }
//   });
// }

import 'dart:async';

void main() {
  const work_time = Duration(seconds: 5); // 작업시간
  const rest_time = Duration(seconds: 2); // 휴식시간
  int count = 5;
  int w_secondsRemaining = work_time.inSeconds;
  int r_secondsRemaining = rest_time.inSeconds;

  Timer.periodic(Duration(seconds: 1), (timer) {
    if (w_secondsRemaining > 0) {
      w_secondsRemaining--;
      print('${w_secondsRemaining ~/ 60}분 ${w_secondsRemaining % 60}초 남음');
    } else if (w_secondsRemaining == 0 && r_secondsRemaining > 0 ){
      // timer.cancel();
      if (w_secondsRemaining == 0 && r_secondsRemaining == 2) {
      print('flutter: 시간이 종료되었습니다. 휴식 시간을 시작합니다');
      }
      r_secondsRemaining--;
      print('${r_secondsRemaining ~/ 60}분 ${r_secondsRemaining % 60}초 남음');
    } else if (r_secondsRemaining == 0) {
    timer.cancel();
    print('flutter: 시간이 종료되었습니다.');
    }
 
  });
    
  // int w_secondsRemaining = work_time.inSeconds;
  // int r_secondsRemaining = rest_time.inSeconds;

  // Timer.periodic(Duration(seconds: 1), (timer) {
  //   if (w_secondsRemaining > 0) {
  //     w_secondsRemaining--;
  //     print('${w_secondsRemaining ~/ 60}분 ${w_secondsRemaining % 60}초 남음');
  //   } else if (w_secondsRemaining == 0 && r_secondsRemaining > 0 ){
  //     // timer.cancel();
  //     if (w_secondsRemaining == 0 && r_secondsRemaining == 2) {
  //     print('flutter: 시간이 종료되었습니다. 휴식 시간을 시작합니다');
  //     }
  //     r_secondsRemaining--;
  //     print('${r_secondsRemaining ~/ 60}분 ${r_secondsRemaining % 60}초 남음');
  //   } else {
  //   timer.cancel();
  //   print('flutter: 시간이 종료되었습니다. 휴식 시간을 시작합니다');
  //   }

  // });
}
// import 'dart:async';

// start_timer() {
//   const work_time = Duration(seconds: 5); // 작업시간
//   const rest_time = Duration(seconds: 2); // 휴식시간
  
//   int w_secondsRemaining = work_time.inSeconds;
//   int r_secondsRemaining = rest_time.inSeconds;

//   Timer.periodic(Duration(seconds: 1), (timer) {
//       if (w_secondsRemaining > 0) {
//         w_secondsRemaining--;
//         print('${w_secondsRemaining ~/ 60}분 ${w_secondsRemaining % 60}초 남음');
//       } else if (w_secondsRemaining == 0 && r_secondsRemaining > 0 ){
//         if (r_secondsRemaining == rest_time.inSeconds) {
//           print('flutter: 작업 시간이 종료되었습니다. 휴식 시간을 시작합니다');
//         }
//         r_secondsRemaining--;
//         print('${r_secondsRemaining ~/ 60}분 ${r_secondsRemaining % 60}초 남음');
//       } else {
//         timer.cancel();
//         print('flutter: 시간이 종료되었습니다.');
// }

// main() {
//   // const work_time = Duration(seconds: 5); // 작업시간
//   // const rest_time = Duration(seconds: 2); // 휴식시간
//   int count = 5;
//   // int w_secondsRemaining = work_time.inSeconds;
//   // int r_secondsRemaining = rest_time.inSeconds;

//   start_timer();
//   // Timer.periodic(Duration(seconds: 1), (timer) {
//   //   if (w_secondsRemaining > 0) {
//   //     w_secondsRemaining--;
//   //     print('${w_secondsRemaining ~/ 60}분 ${w_secondsRemaining % 60}초 남음');
//   //   } else if (w_secondsRemaining == 0 && r_secondsRemaining > 0 ){
//   //     if (r_secondsRemaining == rest_time.inSeconds) {
//   //       print('flutter: 작업 시간이 종료되었습니다. 휴식 시간을 시작합니다');
//   //     }
//   //     r_secondsRemaining--;
//   //     print('${r_secondsRemaining ~/ 60}분 ${r_secondsRemaining % 60}초 남음');
//   //   } else {
//   //     timer.cancel();
//   //     print('flutter: 시간이 종료되었습니다.');
//   count--;
//   if (count > 0) {
//     w_secondsRemaining = work_time.inSeconds;
//     r_secondsRemaining = rest_time.inSeconds;
//     print('flutter: 작업을 다시 시작합니다.');
//   } else {
//     print('flutter: 작업을 모두 완료했습니다.');
//   }
// }

/* 슬 - 회고 : 다트 정말 어렵고, 파이썬이랑 헷갈리면서 더 정리가 잘안됨. 시간을 이용하는건 역시 어려운 작업같음. 
K : 오랜만의 페어프로그래밍이었지만 차분히 민규님과 상의하면서 로직을 만들어보려고함
P : 정확히 다트 언어의 구조를 이해하지 못한채 로직을 만들려고하니 전반적인 설정에 대한 감이 잡히지 않음
T : 정답지를 찾아서 비교해가면서 어떻게 로직을 만들어야할지 파악해본다

/* 민규 -회고 :작업시간이 반복되는 로직을 구현하지 못했다.. 언어가 다르고 익숙치않아서 헷갈렸다.
k: 다트언어 공부한것을 최대한 활용해서 코드를 짜려고 시도해보았다.
p: 다트언어가 익숙치않아 작업시간을 반복하는 로직을 구현하지 못하였다.
t : 반복하는 로직을 구현해서 완성시켜보아야겠다..
