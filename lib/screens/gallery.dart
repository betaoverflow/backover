import 'package:backover/model/images.dart';
import 'package:flutter/material.dart';
import 'package:backover/screens/detailsPage.dart';

class GalleryScreen extends StatefulWidget {
  final int cols;
  final String titleName;
  final List<ImageDetails> backyards;

  const GalleryScreen(
      {Key? key,
      required this.cols,
      required this.titleName,
      required this.backyards})
      : super(key: key);

  @override
  _GalleryScreenState createState() => _GalleryScreenState(
      cols: this.cols, titleName: this.titleName, backyards: this.backyards);
}

class _GalleryScreenState extends State<GalleryScreen> {
  int cols;
  String titleName;
  List<ImageDetails> backyards;

  _GalleryScreenState(
      {required this.cols, required this.titleName, required this.backyards});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Text(
              "$titleName",
              style: TextStyle(
                fontSize: 35,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 50,
                ),
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              imagePath: backyards[index].imagePath,
                              location: backyards[index].location,
                              photographer: backyards[index].photographer,
                              index: index,
                              area: backyards[index].area,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'logo$index',
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage(backyards[index].imagePath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: backyards.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
