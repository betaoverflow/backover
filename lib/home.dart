import 'package:backover/screens/detector.dart';
import 'package:backover/screens/form.dart';
import 'package:backover/screens/gallery.dart';
import 'package:backover/screens/home.dart';
import 'package:backover/screens/newForm.dart';
import 'package:backover/utils/imagePreferences.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: <Widget>[
        HomeScreen(),
        DetectorScreen(),
        FormScreen(),
        GalleryScreen(cols: 3, titleName: "Gallery", backyards: images)
      ][currentIndex],
      bottomNavigationBar: BubbleBottomBar(
        opacity: 0.1,
        currentIndex: currentIndex,
        onTap: changePage,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        elevation: 8,
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
              backgroundColor: Colors.green,
              icon: Icon(
                Icons.home_outlined,
                color: Colors.green,
              ),
              activeIcon: Icon(
                Icons.home_rounded,
                color: Colors.green,
              ),
              title: Text("Scan")),
          BubbleBottomBarItem(
              backgroundColor: Colors.green,
              icon: Icon(
                Icons.access_time,
                color: Colors.green,
              ),
              activeIcon: Icon(
                Icons.access_time_filled_rounded,
                color: Colors.green,
              ),
              title: Text("Detect")),
          // BubbleBottomBarItem(
          //     backgroundColor: Colors.green,
          //     icon: Icon(
          //       Icons.snippet_folder_outlined,
          //       color: Colors.green,
          //     ),
          //     activeIcon: Icon(
          //       Icons.snippet_folder_sharp,
          //       color: Colors.green,
          //     ),
          //     title: Text("Form")),
          BubbleBottomBarItem(
              backgroundColor: Colors.green,
              icon: Icon(
                Icons.add_photo_alternate_outlined,
                color: Colors.green,
              ),
              activeIcon: Icon(
                Icons.add_photo_alternate,
                color: Colors.green,
              ),
              title: Text("Upload")),
          BubbleBottomBarItem(
              backgroundColor: Colors.green,
              icon: Icon(
                Icons.photo_camera_back,
                color: Colors.green,
              ),
              activeIcon: Icon(
                Icons.photo_camera_back_rounded,
                color: Colors.green,
              ),
              title: Text("Gallery")),
          // BubbleBottomBarItem(
          //     backgroundColor: Colors.green,
          //     icon: Container(
          //       height: 36,
          //       width: 36,
          //       decoration: BoxDecoration(
          //           shape: BoxShape.circle,
          //           image: DecorationImage(
          //               image: AssetImage('assets/profile.png')),
          //           boxShadow: [
          //             BoxShadow(
          //                 color: Color(0x5c00000),
          //                 offset: Offset(0, 1),
          //                 blurRadius: 5)
          //           ]),
          //     ),
          //     title: Text("Gallery"))
        ],
      ),
    );
  }
}
