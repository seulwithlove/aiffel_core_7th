# [Flutter-Quest04] Repository

<Flutter - 5. Flutter Networking> 를 학습한 후 진행한 메인퀘스트 레포지토리

## 파일 구성

1. quest04
   - 책을 학습후 문제대로 앱 구현


### Updated version repository [🔗](https://github.com/seulwithlove/aiffel_flutter_quest04)


---

## AIFFEL Campus Online Code Peer Review

- Coder : 김양희, 이슬
- Reviewr : 이선재


# PRT(Peer Review Template)
- [X]  **1. 주어진 문제를 해결하는 완성된 코드가 제출되었나요?**
    - 문제에서 요구하는 최종 결과물이 첨부되었는지 확인
    - 문제를 해결하는 완성된 코드란 프로젝트 루브릭 3개 중 2개, 
    퀘스트 문제 요구조건 등을 지칭
        - 해당 조건을 만족하는 코드를 캡쳐해 근거로 첨부
```
   Future<void> fetchData() async {
    try {
      const enteredUrl =
          'https://9045-34-168-171-13.ngrok-free.app/'; // URL 가져오기
      final response = await http.get(
        Uri.parse("${enteredUrl}sample"), // URL 사용
        headers: {
          'Content-Type': 'application/json',
          'ngrok-skip-browser-warning': '69420',
        },
      );
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          result1 = "predicted_label: ${data['predicted_label']}";
          result2 = "prediction_score: ${data['prediction_score']}";
        });
      } else {
        setState(() {
          result1 = "Failed to fetch data. Status Code: ${response.statusCode}";
          result2 = "Failed to fetch data. Status Code: ${response.statusCode}";
        });
      }
    } catch (e) {
      setState(() {
        result1 = "Error: $e";
        result2 = "Error: $e";
      });
    }
  }
```
[리뷰] 버튼 클릭에 대한 분기처리를 확인했다.  

```
   return Scaffold(
      appBar: AppBar(
        title: const Text('Jellyfish Classifier'),
        leading: const Icon(Icons.dangerous_outlined),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 이미지
            Image.asset(
              'images/jellyfish.jpeg',
              width: 300,
              height: 300,
            ),
            // Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    fetchData();
                    print(result1);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red)),
                  child: const Text('예측 결과 버튼'),
                ),
                // 결과값 디버그 콘솔에 출력 시도 - 실패
                // Text(
                //   result,
                //   style: const TextStyle(fontSize: 18),
                // ),
                const SizedBox(width: 18),
                ElevatedButton(
                  onPressed: () {
                    fetchData();
                    print(result2);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue)),
                  child: const Text('예측 확률 버튼'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
```
[리뷰] 요구사항에 맞는 화면을 그리는 코드를 확인했다.  

---
    
- [X]  **2. 전체 코드에서 가장 핵심적이거나 가장 복잡하고 이해하기 어려운 부분에 작성된 
주석 또는 doc string을 보고 해당 코드가 잘 이해되었나요?**
    - 해당 코드 블럭에 doc string/annotation이 달려 있는지 확인
    - 해당 코드가 무슨 기능을 하는지, 왜 그렇게 짜여진건지, 작동 메커니즘이 뭔지 기술.
    - 주석을 보고 코드 이해가 잘 되었는지 확인
        - 잘 작성되었다고 생각되는 부분을 캡쳐해 근거로 첨부합니다.
```
   const enteredUrl =
          'https://9045-34-168-171-13.ngrok-free.app/'; // URL 가져오기
      final response = await http.get(
        Uri.parse("${enteredUrl}sample"), // URL 사용
```
[리뷰] 어떤 URL로 통신을 하는지에 대한 부분을 확인했다.  

---

        
- [X]  **3. 에러가 난 부분을 디버깅하여 문제를 “해결한 기록을 남겼거나” 
”새로운 시도 또는 추가 실험을 수행”해봤나요?**
    - 문제 원인 및 해결 과정을 잘 기록하였는지 확인
    - 문제에서 요구하는 조건에 더해 추가적으로 수행한 나만의 시도, 
    실험이 기록되어 있는지 확인
        - 잘 작성되었다고 생각되는 부분을 캡쳐해 근거로 첨부합니다.

```
    // 결과값 디버그 콘솔에 출력 시도 - 실패
                // Text(
                //   result,
                //   style: const TextStyle(fontSize: 18),
                // ),
```
[리뷰] 실패에 대한 기록을 확인했다.  

---

- [ ]  **4. 회고를 잘 작성했나요?**
    - 주어진 문제를 해결하는 완성된 코드 내지 프로젝트 결과물에 대해
    배운점과 아쉬운점, 느낀점 등이 기록되어 있는지 확인
    - 전체 코드 실행 플로우를 그래프로 그려서 이해를 돕고 있는지 확인
        - 잘 작성되었다고 생각되는 부분을 캡쳐해 근거로 첨부합니다.


        
- [X]  **5. 코드가 간결하고 효율적인가요?**
    - 파이썬 스타일 가이드 (PEP8) 를 준수하였는지 확인
    - 하드코딩을 하지않고 함수화, 모듈화가 가능한 부분은 함수를 만들거나 클래스로 짰는지
    - 코드 중복을 최소화하고 범용적으로 사용할 수 있도록 함수화했는지
        - 잘 작성되었다고 생각되는 부분을 캡쳐해 근거로 첨부합니다.
     
```
   setState(() {
          result1 = "predicted_label: ${data['predicted_label']}";
          result2 = "prediction_score: ${data['prediction_score']}";
        });
      } else {
        setState(() {
          result1 = "Failed to fetch data. Status Code: ${response.statusCode}";
          result2 = "Failed to fetch data. Status Code: ${response.statusCode}";
        });
```
[리뷰] 분기처리를 효율적으로 진행한 것을 확인할 수 있다.  






# 참고 링크 및 코드 개선
```
# 코드 리뷰 시 참고한 링크가 있다면 링크와 간략한 설명을 첨부합니다.
# 코드 리뷰를 통해 개선한 코드가 있다면 코드와 간략한 설명을 첨부합니다.
```
