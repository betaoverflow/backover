import 'package:flutter/material.dart';
import 'package:backover/widgets/button.dart';

class DetailsPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String photographer;
  final String price;
  final String details;
  final int index;
  final double area;

  DetailsPage(
      {required this.imagePath,
      required this.title,
      required this.photographer,
      required this.price,
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
            height: 320,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Center(
                          child: Text(
                            title,
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
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
                                Icons.attach_money_outlined,
                                color: Colors.green,
                              ),
                              label: Text(
                                price,
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Text(
                          details,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
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
