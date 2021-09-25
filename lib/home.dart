import 'package:backover/screens/detector.dart';
import 'package:backover/screens/form.dart';
import 'package:backover/screens/gallery.dart';
import 'package:backover/screens/home.dart';

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
        GalleryScreen()
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
                Icons.dashboard,
                color: Colors.green,
              ),
              activeIcon: Icon(
                Icons.dashboard,
                color: Colors.green,
              ),
              title: Text("Home")),
          BubbleBottomBarItem(
              backgroundColor: Colors.green,
              icon: Icon(
                Icons.access_time,
                color: Colors.green,
              ),
              activeIcon: Icon(
                Icons.access_time,
                color: Colors.green,
              ),
              title: Text("Logs")),
          BubbleBottomBarItem(
              backgroundColor: Colors.green,
              icon: Icon(
                Icons.folder_open,
                color: Colors.green,
              ),
              activeIcon: Icon(
                Icons.folder_open,
                color: Colors.green,
              ),
              title: Text("Folders")),
          BubbleBottomBarItem(
              backgroundColor: Colors.green,
              icon: Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/profile.png')),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0x5c00000),
                          offset: Offset(0, 1),
                          blurRadius: 5)
                    ]),
              ),
              title: Text("Profile"))
        ],
      ),
    );
  }
}
