// ignore: import_of_legacy_library_into_null_safe
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:backover/screens/suggestions.dart';
import 'package:backover/utils/imagePreferences.dart';
import 'package:backover/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class ArAreaCalculator extends StatefulWidget {
  const ArAreaCalculator({Key? key}) : super(key: key);

  @override
  _ArAreaCalculatorState createState() => _ArAreaCalculatorState();
}

class _ArAreaCalculatorState extends State<ArAreaCalculator> {
  late ArCoreController arCoreController;
  var area = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[100],
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text(
            'AR Area Calculator',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: Column(children: [
          Expanded(
              flex: 8,
              child: ArCoreView(
                onArCoreViewCreated: _onArCoreViewCreated,
                enableTapRecognizer: true,
              )),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Text("click after selecting at least two points"),
                ButtonWidget(
                  text: "show suggestions",
                  onClicked: shoeLace,
                )
              ],
            ),
          )
        ]),
      ),
    );
  }

  void _onArCoreViewCreated(ArCoreController controller) {
    arCoreController = controller;

    arCoreController.onNodeTap = (name) => onTapHandler(name);
    arCoreController.onPlaneTap = _onPlaneTapHandler;
  }

  void onTapHandler(String name) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) =>
          AlertDialog(content: Text('onNodeTap on $name')),
    );
  }

  var points = <ArCoreHitTestResult>[];
  var pts = <Dimensions>[];

  double metreSquareToFeetSquare(double x) {
    return x * 10.764;
  }

  void hitToDimensions() {
    for (int i = 0; i < points.length; i++) {
      double dx = points[i].pose.translation.x;
      double dz = points[i].pose.translation.z;

      pts.add(Dimensions(dx, dz));
    }

    pts.add(Dimensions(points[0].pose.translation.x * 1.0,
        points[0].pose.translation.z * 1.0));
  }

  void shoeLace() {
    hitToDimensions();

    if (points.length < 3) {
      print("at least 3 nodes are required to calculate area");
      setState(() {
        area = -1.0;
      });
      return;
    }

    int n = pts.length;

    double det = 0.0;

    /** add product of x coordinate of ith point with y coordinate of (i + 1)th point **/
    for (int i = 0; i < n - 1; i++) {
      det += (pts[i].dx * pts[i + 1].dz);
    }

    for (int i = 0; i < n - 1; i++) {
      det -= (pts[i].dz * pts[i + 1].dx);
    }

    det = det.abs();
    det /= 2;
    det = metreSquareToFeetSquare(det);

    // store area to local storage
    // final prefs = await SharedPreferences.getInstance();
    // prefs.setDouble('area', det);
    //
    fillImagesWithArea(images, det);

    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Suggestions(area: det)));
  }

  void _onPlaneTapHandler(List<ArCoreHitTestResult> hits) {
    print("plane tap handler invoked");
    final hit = hits.first;

    // final moonMaterial = ArCoreMaterial(color: Colors.grey);
    //
    // final moonShape = ArCoreSphere(
    //   materials: [moonMaterial],
    //   radius: 0.03,
    // );

    // final moon = ArCoreNode(
    //   shape: moonShape,
    //   position: vector.Vector3(0.2, 0, 0),
    //   rotation: vector.Vector4(0, 0, 0, 0),
    // );

    final earthMaterial =
    ArCoreMaterial(color: const Color.fromARGB(120, 66, 134, 244));

    final earthShape = ArCoreSphere(
      materials: [earthMaterial],
      radius: 0.1,
    );

    final earth = ArCoreNode(
        shape: earthShape,
        position: hit.pose.translation + vector.Vector3(0.0, 1.0, 0.0),
        rotation: hit.pose.rotation);

    arCoreController.addArCoreNodeWithAnchor(earth);
    points.add(hit);
  }

  @override
  void dispose() {
    arCoreController.dispose();
    super.dispose();
  }
}

class Dimensions {
  final double dx;
  final double dz;

  Dimensions(this.dx, this.dz);
}
