
/* factory constructor
*   특별한 로직이나 조건을 적용하려고 할때 사용
*   객체를 생성할 때마다 새로운 객체를 만들지 않고 이전에 만든 객체를 반환하는 등의 동작을 수행할 수 있다?
*   factory constructor를 사용하는 이유 : 객체 생성 로직을 제어하여 불필요한 객체 생성을 피하고, 성능을 최적화할 수 있다
*/

// class MyClass {
//   MyClass._instance();
//   factory MyClass() {
//     return MyClass._instance();
//   }
// }

// main() {
//   var obj = MyClass();
// }

// cache algorithm
class Image {
  late String url;
  static Map<String, Image> _cache = <String, Image>{};
  Image._instance(this.url);
  factory Image(String url){
    if (_cache[url] == null) {        // 전달받은 식별자가 캐시에 없으면
      var obj = Image._instance(url); // 해당 식별자로 객체를 새로 생성
      _cache[url] = obj;              // 캐시에 추가
    }
    return _cache[url]!;              // 캐시에서 식별자에 해당하는 객체 반환
  }
}

void main(List<String> args) {
  var image1 = Image('a.jpg');
  var image2 = Image('a.jpg');
  print('image1 == image2 : ${image1 == image2}');
}