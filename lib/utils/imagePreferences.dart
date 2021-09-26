import 'package:backover/model/images.dart';

List<ImageDetails> images = [
  ImageDetails(
    imagePath: 'assets/1.jpg',
    photographer: 'Photograher',
    location: 'Location',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    area: 200.0,
  ),
  ImageDetails(
    imagePath: 'assets/2.jpg',
    photographer: 'Photographer',
    location: 'Location',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    area: 100.0,
  ),
  ImageDetails(
    imagePath: 'assets/3.jpg',
    photographer: 'Photographer',
    location: 'Location',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    area: 500.0,
  ),
  ImageDetails(
    imagePath: 'assets/1.jpg',
    photographer: 'Photograher',
    location: 'Location',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    area: 60.0,
  ),
  ImageDetails(
    imagePath: 'assets/2.jpg',
    photographer: 'Photographer',
    location: 'Location',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    area: 243.0,
  ),
  ImageDetails(
    imagePath: 'assets/3.jpg',
    photographer: 'Photographer',
    location: 'Location',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    area: 100.0,
  ),
  ImageDetails(
    imagePath: 'assets/1.jpg',
    photographer: 'Photograher',
    location: 'Location',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    area: 35.0,
  ),
  ImageDetails(
    imagePath: 'assets/2.jpg',
    photographer: 'Photographer',
    location: 'Location',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    area: 25.0,
  ),
  ImageDetails(
    imagePath: 'assets/3.jpg',
    photographer: 'Photographer',
    location: 'Location',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    area: 30.0,
  ),
  ImageDetails(
    imagePath: 'assets/1.jpg',
    photographer: 'Photograher',
    location: 'Location',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    area: -1.0,
  ),
  ImageDetails(
    imagePath: 'assets/2.jpg',
    photographer: 'Photographer',
    location: 'Location',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    area: -1.0,
  ),
  ImageDetails(
    imagePath: 'assets/3.jpg',
    photographer: 'Photographer',
    location: 'Location',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    area: -1.0,
  ),
  ImageDetails(
    imagePath: 'assets/1.jpg',
    photographer: 'Photograher',
    location: 'Location',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    area: -1.0,
  ),
  ImageDetails(
    imagePath: 'assets/2.jpg',
    photographer: 'Photographer',
    location: 'Location',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    area: -1.0,
  ),
  ImageDetails(
    imagePath: 'assets/3.jpg',
    photographer: 'Photographer',
    location: 'Location',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    area: -1.0,
  ),
];

List<ImageDetails> suggestedImages = [];

void fillImagesWithArea(List<ImageDetails> all, double userArea) {
  int filterFactor = 50;

  for (int i = 0; i < all.length; i++) {
    double currArea = all[i].area;

    if (currArea > 0) {
      if (userArea > currArea - filterFactor &&
          userArea < currArea + filterFactor) {
        suggestedImages.add(all[i]);
      }
    }
  }
}
