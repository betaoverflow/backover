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
                  labelText: 'TITLE ',
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
                  labelText: 'DESCRIPTION ',
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
            Center(child: buildSubmitButton())
            /*TextButton(
              onPressed: () {},
              child: Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.deepOrange,
                    color: Colors.deepOrange,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          'SUBMIT',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                    ),
                  )),
            ),*/
          ]),
    );
  }

  Widget buildSubmitButton() => ButtonWidget(
        text: 'SUBMIT',
        onClicked: () {},
      );
}
