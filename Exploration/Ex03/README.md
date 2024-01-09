# [Exploration-EX03] Repository

<Exploration 03. 인물사진을 만들어보자> 모듈에서 진행한 메인퀘스트 레포지토리

---

## 파일 구성

1. Project_EX03.Finding_portrait_mode_issues
   - 노드를 학습후 
      - shallow focus 이미지 2종과 크로마키 배경합성 이미지 1종 - 총 3개의 이미지를 생성하고
      - 해당 이미지에서 문제점을 찾고
      - 메커니즘이 포함된 솔루션 제안

---

## AIFFEL Campus Online Code Peer Review

- Coder : 이슬
- Reviewr : 김양희


# PRT(Peer Review Template)
- [ㅇ]  **1. 주어진 문제를 해결하는 완성된 코드가 제출되었나요?**
    - 문제에서 요구하는 최종 결과물이 첨부되었는지 확인
    - 문제를 해결하는 완성된 코드란 프로젝트 루브릭 3개 중 2개, 
    퀘스트 문제 요구조건 등을 지칭
        - 해당 조건을 만족하는 코드를 캡쳐해 근거로 첨부
     
[리뷰] 모든 루브릭을 만족시켰습니다.
- 블러 배경과 원본 이미지 합성
![image](https://github.com/seulwithlove/aiffel_core_7th/assets/145723730/53df3bdf-675b-4530-ba1e-1f00d960c391)
- 크로마키 합성
![image](https://github.com/seulwithlove/aiffel_core_7th/assets/145723730/e92be318-88f7-4d11-864f-fe8d8bf9f09a)
- [루브릭2] 문제점 발견하기
![image](https://github.com/seulwithlove/aiffel_core_7th/assets/145723730/46d420b3-ae9d-4c58-a969-e063ec1dc402)
- [루브릭3] 해결방안 제안
![image](https://github.com/seulwithlove/aiffel_core_7th/assets/145723730/c6d4534e-b6a3-41d6-b5d7-4d4f49e3fd73)

    
- [ㅇ]  **2. 전체 코드에서 가장 핵심적이거나 가장 복잡하고 이해하기 어려운 부분에 작성된 
주석 또는 doc string을 보고 해당 코드가 잘 이해되었나요?**
    - 해당 코드 블럭에 doc string/annotation이 달려 있는지 확인
    - 해당 코드가 무슨 기능을 하는지, 왜 그렇게 짜여진건지, 작동 메커니즘이 뭔지 기술.
    - 주석을 보고 코드 이해가 잘 되었는지 확인
        - 잘 작성되었다고 생각되는 부분을 캡쳐해 근거로 첨부합니다.
![image](https://github.com/seulwithlove/aiffel_core_7th/assets/145723730/e55c1c43-7e1f-4d5a-8492-808742807839)

        
- [ㅇ]  **3. 에러가 난 부분을 디버깅하여 문제를 “해결한 기록을 남겼거나” 
”새로운 시도 또는 추가 실험을 수행”해봤나요?**
    - 문제 원인 및 해결 과정을 잘 기록하였는지 확인
    - 문제에서 요구하는 조건에 더해 추가적으로 수행한 나만의 시도, 
    실험이 기록되어 있는지 확인
        - 잘 작성되었다고 생각되는 부분을 캡쳐해 근거로 첨부합니다.
     
   [리뷰]
  - 원본이미지와 concate하는 과정에서의 문제를 잘 해결해주셨습니다.
   ![image](https://github.com/seulwithlove/aiffel_core_7th/assets/145723730/31641512-8d77-4a16-8094-e6147f4af419)
  - 개체가 여러 개인 사진에서 1개의 개체만 활용하는 시도를 성공적으로 수행하였습니다.
    ![image](https://github.com/seulwithlove/aiffel_core_7th/assets/145723730/ce4e0c86-1e8b-471f-882b-0cd0e5b6c200)

        
- [ㅇ]  **4. 회고를 잘 작성했나요?**
    - 주어진 문제를 해결하는 완성된 코드 내지 프로젝트 결과물에 대해
    배운점과 아쉬운점, 느낀점 등이 기록되어 있는지 확인
    - 전체 코드 실행 플로우를 그래프로 그려서 이해를 돕고 있는지 확인
        - 잘 작성되었다고 생각되는 부분을 캡쳐해 근거로 첨부합니다.
   ![image](https://github.com/seulwithlove/aiffel_core_7th/assets/145723730/d4ef0f0e-c53e-4222-af09-7946cb791ae0)

        
- [ㅇ]  **5. 코드가 간결하고 효율적인가요?**
    - 파이썬 스타일 가이드 (PEP8) 를 준수하였는지 확인
    - 하드코딩을 하지않고 함수화, 모듈화가 가능한 부분은 함수를 만들거나 클래스로 짰는지
    - 코드 중복을 최소화하고 범용적으로 사용할 수 있도록 함수화했는지
        - 잘 작성되었다고 생각되는 부분을 캡쳐해 근거로 첨부합니다.
![image](https://github.com/seulwithlove/aiffel_core_7th/assets/145723730/b070e24d-1b9f-40e4-8a06-4741c7d7e982)


# 참고 링크 및 코드 개선
```
# 코드 리뷰 시 참고한 링크가 있다면 링크와 간략한 설명을 첨부합니다.
# 코드 리뷰를 통해 개선한 코드가 있다면 코드와 간략한 설명을 첨부합니다.
```
