import 'package:flutter/material.dart';
import 'package:backover/widgets/button.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final TextEditingController _title = TextEditingController();
  final TextEditingController _content = TextEditingController();

  @override
  void dispose() {
    _title.dispose();
    _content.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 32),
          physics: BouncingScrollPhysics(),
          children: [
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(10.0, 150.0, 0.0, 0.0),
                    child: Text(
                      'Feeder',
                      style: TextStyle(
                          fontSize: 80.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(250.0, 150.0, 0.0, 0.0),
                    child: Text(
                      ' .',
                      style: TextStyle(
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 24),
            TextField(
              controller: _title,
              decoration: InputDecoration(
                  labelText: 'AREA ',
                  labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepOrange))),
            ),
            const SizedBox(height: 24),
            TextField(
              controller: _content,
              decoration: InputDecoration(
                  labelText: 'LOCATION ',
                  labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepOrange))),
            ),
            const SizedBox(height: 24),
            const SizedBox(height: 10),
            const SizedBox(height: 40),
            Center(
              child: SizedBox(
                height: 50,
                width: 120,
                child: TextButton.icon(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.w500),
                    backgroundColor: Colors.green[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  onPressed: () {},
                  icon: Icon(
                    Icons.folder_open_rounded,
                    color: Colors.green,
                  ),
                  label: Text(
                    'Browse',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Center(child: buildSubmitButton()),
          ]),
    );
  }

  Widget buildSubmitButton() => ButtonWidget(
        text: 'SUBMIT',
        onClicked: () {},
      );
}
