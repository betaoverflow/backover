import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'package:async/async.dart';
// ignore: import_of_legacy_library_into_null_safe
import "package:http/http.dart" as http;
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import "package:image_picker/image_picker.dart";
import 'package:path/path.dart';
import 'package:backover/widgets/button.dart';

class ImageUpload extends StatefulWidget {
  @override
  _ImageUploadState createState() => _ImageUploadState();
}

class _ImageUploadState extends State<ImageUpload> {
  late File _image;
  final picker = ImagePicker();

  Future<void> getImage() async {
    dynamic pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  upload(File imageFile) async {
    // open a bytestream
    var stream =
        new http.ByteStream(DelegatingStream.typed(imageFile.openRead()));
    // get file length
    var length = await imageFile.length();

    // string to uri
    var uri = Uri.parse("http://10.0.2.2:8080/upload");

    // create multipart request
    var request = new http.MultipartRequest("POST", uri);

    // multipart that takes file
    var multipartFile = new http.MultipartFile('myFile', stream, length,
        filename: basename(imageFile.path));

    // add file to multipart
    request.files.add(multipartFile);

    // send
    var response = await request.send();
    print(response.statusCode);

    // listen for response
    response.stream.transform(utf8.decoder).listen((value) {
      print(value);
    });
  }

  bool isloaded = false;
  var result;
  fetch() async {
    var response = await http.get('http://10.0.2.2:8080/image');
    result = jsonDecode(response.body);
    print(result[0]['image']);
    setState(() {
      isloaded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[50],
        body: Stack(
          children: <Widget>[
            Container(
              height: 360,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(500.0),
                    bottomRight: Radius.circular(160.0)),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 150),
                child: Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Center(
                      child: Text(
                        "Select an Image",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  SizedBox(height: 280),

                  SizedBox(
                    height: 120,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonWidget(onClicked: () => upload(_image), text: "Upload"),
                  isloaded
                      ? Image.network(
                          'http://10.0.2.2:8080/${result[0]['image']}')
                      : CircularProgressIndicator(),
                ]))
          ],
        ));
  }
}
