import 'package:flutter/material.dart';
import 'package:backover/widgets/button.dart';

class DetailsPage extends StatelessWidget {
  final String imagePath;
  final String location;
  final String photographer;
  final String details;
  final int index;
  final double area;

  DetailsPage(
      {required this.imagePath,
      required this.location,
      required this.photographer,
      required this.details,
      required this.index,
      required this.area});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(),
          Expanded(
            child: Hero(
              tag: 'logo$index',
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(imagePath),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 300,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 10),
                        Center(
                            child: SizedBox(
                          height: 40,
                          width: 300,
                          child: TextButton.icon(
                            style: TextButton.styleFrom(
                              textStyle: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w500),
                              backgroundColor: Colors.green.shade50,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                            ),
                            onPressed: () => {},
                            icon: Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.green,
                            ),
                            label: Text(
                              'By $photographer',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        )),
                        SizedBox(height: 10),
                        Center(
                          child: SizedBox(
                            height: 40,
                            width: 300,
                            child: TextButton.icon(
                              style: TextButton.styleFrom(
                                textStyle: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w500),
                                backgroundColor: Colors.green.shade50,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                              ),
                              onPressed: () => {},
                              icon: Icon(
                                Icons.landscape_outlined,
                                color: Colors.green,
                              ),
                              label: Text(
                                "Area: $area sq. ft",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: SizedBox(
                            height: 40,
                            width: 300,
                            child: TextButton.icon(
                              style: TextButton.styleFrom(
                                textStyle: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w500),
                                backgroundColor: Colors.green.shade50,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                              ),
                              onPressed: () => {},
                              icon: Icon(
                                Icons.place_outlined,
                                color: Colors.green,
                              ),
                              label: Text(
                                location,
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        SizedBox(
                          child: Text(
                            details,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
