import 'package:flutter/material.dart';

class DetectorScreen extends StatefulWidget {
  const DetectorScreen({Key? key}) : super(key: key);

  @override
  _DetectorScreenState createState() => _DetectorScreenState();
}

class _DetectorScreenState extends State<DetectorScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Text("Detector Screen"));
  }
}
