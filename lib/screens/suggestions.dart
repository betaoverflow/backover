import 'package:backover/screens/gallery.dart';
import 'package:backover/utils/imagePreferences.dart';
import 'package:flutter/material.dart';

class Suggestions extends StatefulWidget {
  final double area;

  const Suggestions({Key? key, required this.area}) : super(key: key);

  @override
  _SuggestionsState createState() => _SuggestionsState(area: this.area);
}

class _SuggestionsState extends State<Suggestions> {
  double area;

  _SuggestionsState({required this.area});

  @override
  Widget build(BuildContext context) {
    var areaString = double.parse(area.toStringAsFixed(2));
    return GalleryScreen(cols: 1, titleName: "Suggestions for \n $areaString sq. ft", backyards: suggestedImages);
  }
}
