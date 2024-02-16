import 'dart:convert';
import 'dart:io' as io; // for performing input and output operations

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_main_quest/constants.dart';
import 'package:google_fonts/google_fonts.dart'; // using custom fonts
import 'package:http/http.dart'
    as http; // for making HTTP requests (e.g., POST requests)
import 'package:image_picker/image_picker.dart'; // for picking images

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState(); // state 값을 받아오는 위젯 생성
}

class _HomePageState extends State<HomePage> {
  io.File? _image; // image variable
  final picker = ImagePicker(); // ImagePicker를 변수로 사용
  String parsedtext = "";

  // get image from camera or gallery with Future   --- 첫번째 시도 : 앱 화면에 카메라 촬영, 이미지 선택
  // Future getImage(ImageSource imageSource) async {
  //   final image = await picker.pickImage(
  //       source: imageSource, maxWidth: 670, maxHeight: 970);

  //   setState(
  //     () {
  //       _image = File(image!.path); // save image to _image variable
  //     },
  //   );
  // }

  // text that will printed after OCR
  Future _getImage(ImageSource imageSource) async {
    // get image
    // final imagefile = await ImagePicker()
    //     .pickImage(source: ImageSource.gallery, maxWidth: 670, maxHeight: 970);
    final pickedImage = await picker.pickImage(source: imageSource);
    if (pickedImage == null) return;

    // prepare the image
    var bytes = io.File(pickedImage.path.toString()).readAsBytesSync();
    String img64 = base64Encode(bytes);
    print(img64.toString());

    // send to api
    var url = 'http://api.ocr.space/parse/image';
    var payload = {
      "based64Image": "data:image/jpg;based64,${img64.toString()}",
      "language": "kor"
    };

    //환경변수로 ocr space api 값 사용
    var header = {
      "apikey": Constants.ocrSpaceApiKey,
    };

    var post = await http.post(Uri.parse(url), body: payload, headers: header);

    // get result from api
    var result = jsonDecode(post.body);

    setState(
      () {
        _image = io.File(pickedImage.path); // save image to _image variable
        parsedtext = result['ParsedResults'][0]['ParsedText'];
      },
    );
  }

  // Showing image widget
  Widget showImage() {
    return Container(
      color: Colors.pink[50],
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width,
      child: Center(
        child: _image == null
            ? const Text('No image selected')
            : Image.file(io.File(_image!.path)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // fix screen on vertical way
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return Scaffold(
      backgroundColor: Colors.brown[100],
      // 화면 스크롤 가능하게 만드는 SingleChildScrollView 위젯
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 100.0),
              alignment: Alignment.center,
              child: Text(
                "ocr demo app".toUpperCase(),
                // google font 사용
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w700, fontSize: 22),
                textAlign: TextAlign.center,
              ),
            ),
            // make space
            const SizedBox(
              height: 20,
            ),
            // image box that shows uploaded image
            showImage(),
            // make space
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              // first button : Camera
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      _getImage(ImageSource.camera);
                      showImage();
                    },
                    child: const Icon(Icons.add_a_photo_outlined),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  // Second button : Gallery
                  FloatingActionButton(
                    onPressed: () {
                      _getImage(ImageSource.gallery);
                      showImage();
                    },
                    child: const Icon(Icons.wallpaper_rounded),
                  ),
                ],
              ),
            ),
            // make space
            // const SizedBox(
            //   height: 5,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: <Widget>[
            //     // Camera button : get image from camera
            //     FloatingActionButton(
            //       tooltip: 'Take a Picture',
            //       onPressed: () {
            //         _getImage(ImageSource.camera);
            //       },
            //       child: const Icon(Icons.add_a_photo_outlined),
            //     ),
            //     // Gallery button : get image from gallery
            //     FloatingActionButton(
            //       tooltip: 'upload Image',
            //       onPressed: () {
            //         _getImage(ImageSource.gallery);
            //       },
            //       child: const Icon(Icons.wallpaper_rounded),
            //     ),
            //   ],
            // ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    "ParsedText is:",
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    parsedtext,
                    style: GoogleFonts.montserrat(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
