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
      required this.area
      });
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Hero(
                tag: 'logo$index',
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 260,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            title,
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'By $photographer',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            price,
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Text(
                          "Area: $area sq. ft",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          details,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(child: Center(child: buildBackButton())),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(child: Center(child: buildContactButton())),
                      ],
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBackButton() => ButtonWidget(text: 'See More', onClicked: () {});

  Widget buildContactButton() => ButtonWidget(
        text: 'Contact',
        onClicked: () {},
      );
}
