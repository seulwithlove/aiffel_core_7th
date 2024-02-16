# [Main Quest 5] Repository

**\<Flutter> 모듈에서 진행한 메인퀘스트 레포지토리**

- 프로젝트 앱 구현
    - 앱으로 구현할 프로젝트를 구상하고, 화면 구성을 도식화(간단한 스케치)
    - 앱에 기본 기능을 구현
        - 화면에 이미지/텍스트 출력, 화면 전환, 데이터 전달
    - 비동기 방식 처리를 활용
    - 가능하면 데모 모델을 사용해서 인퍼런스 결과 앱 화면 출력 확인

---

## 파일 구성

1. 📁 flutter_main_quest 
    - 플러터 코드 폴더

---

## 프로젝트 앱 : OCR 앱
- 앱에서 사진을 촬영하고, 촬영한 사진에서 OCR 기법으로 텍스트를 추출, 인식하고 해당 텍스트를 앱 화면에 출력

### 앱 화면 구상
![main_quest_wireframe](https://github.com/seulwithlove/aiffel_core_7th/assets/140625136/d0357e97-9d7a-475e-a572-7faf3f88a27f)


### 구현 기능
- 카메라로 사진을 촬영 - 해당 사진 앱 화면 출력
- OCR 인식
- OCR 인식 결과 텍스트 앱 화면 출력

### 결과물
- 1차

https://github.com/seulwithlove/aiffel_core_7th/assets/140625136/685b0d9e-1f33-4373-a873-cdb7b8ac5a83
  

---

## Source & Reference
- [blog - wireframe](https://slowalk.com/2140)
- [dart docs - Asynchronous programming](https://dart.dev/codelabs/async-await)
- [blog - 비동기처리](https://monocsp.dev/8)
- [flutter package - image picker](https://pub.dev/packages/image_picker/example)
- [blog - 카메라 기능](https://kyungsnim.net/113)
- [aws - What is OCR](https://aws.amazon.com/what-is/ocr/?nc1=h_ls)
- [OCRSpace - OCR API](https://ocr.space/OCRAPI)
- [blog - OCR 기능 1](https://medium.com/@nsivaramdav/create-a-image-to-text-recognition-app-with-flutter-d135b682ba4d)
- [blog - OCR 기능 2](https://velog.io/@mm723/Flutter%EC%9D%B4%EB%AF%B8%EC%A7%80%EC%97%90%EC%84%9C-%ED%85%8D%EC%8A%A4%ED%8A%B8-%EC%B6%94%EC%B6%9C%ED%95%98%EA%B8%B0)
- [blog - OCR APP](https://medium.com/@sushaanshakya88/text-recognition-from-image-ocr-in-flutter-d9b35190d824)


---

## 회고 

**[종합]**
- OCR 앱을 설명한 블로그를 필사하듯 코드를 하나씩 뜯어보면서 기능을 구현해보려고 했지만, 비동기 처리 방식에 대한 공부가 부족하고, API 값을 활용하는 부분에서도 아직 이해하지 못해서 결국 퀘스트 시간내 앱 구현은 실패함
- 추가로 찾은 자료를 바탕으로 개선작업을 해볼 예정

**[KPT]**
- Keep 
    - wireframe에 대해 새로 배웠고, 플랫폼을 활용해 재미있게 앱 디자인을 구상함
    - OCR과 비동기처리 방식에 대해 다시 공부해봄
    - 포기하지 않았다..😇

- Problem
    - 사진 촬영과 갤러리에서 이미지를 불러오는 기능만 사용했을때엔 실행에 문제가 없었는데, OCR Space API를 활용해서 불러온 이미지를 텍스트로 변환하는 기능을 추가하면서 이미지를 불러오는 기능이 실행되지 않았고, 텍스트 출력도 되지않음
    - ![Screenshot 2024-02-16 at 18 12 53](https://github.com/seulwithlove/aiffel_core_7th/assets/140625136/fb0346a6-f742-455f-a525-bbc2f8667c5d) 
        - 버튼을 클릭하면 위 에러가 반복해서 출력됨

- Try
    - 주말동안 추가로 찾은 [블로그](https://medium.com/@sushaanshakya88/text-recognition-from-image-ocr-in-flutter-d9b35190d824)를 참고해서 기능 구현을 다시 시도
