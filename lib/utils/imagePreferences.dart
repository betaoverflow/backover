import 'package:backover/model/images.dart';

List<ImageDetails> images = [
  ImageDetails(
    imagePath: 'assets/1.jpg',
    price: 'Price',
    photographer: 'Photograher',
    title: 'Title',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    area: 200,
  ),
  ImageDetails(
    imagePath: 'assets/2.jpg',
    price: 'Price',
    photographer: 'Photographer',
    title: 'Title',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    area: 100,
  ),
  ImageDetails(
    imagePath: 'assets/3.jpg',
    price: 'Price',
    photographer: 'Photographer',
    title: 'Title',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    area: 500,
  ),
  ImageDetails(
    imagePath: 'assets/1.jpg',
    price: 'Price',
    photographer: 'Photograher',
    title: 'Title',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    area: 60,
  ),
  ImageDetails(
    imagePath: 'assets/2.jpg',
    price: 'Price',
    photographer: 'Photographer',
    title: 'Title',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    area: 243,
  ),
  ImageDetails(
    imagePath: 'assets/3.jpg',
    price: 'Price',
    photographer: 'Photographer',
    title: 'Title',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
    area: 100,
  ),
  ImageDetails(
    imagePath: 'assets/1.jpg',
    price: 'Price',
    photographer: 'Photograher',
    title: 'Title',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: 'assets/2.jpg',
    price: 'Price',
    photographer: 'Photographer',
    title: 'Title',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: 'assets/3.jpg',
    price: 'Price',
    photographer: 'Photographer',
    title: 'Title',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: 'assets/1.jpg',
    price: 'Price',
    photographer: 'Photograher',
    title: 'Title',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: 'assets/2.jpg',
    price: 'Price',
    photographer: 'Photographer',
    title: 'Title',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: 'assets/3.jpg',
    price: 'Price',
    photographer: 'Photographer',
    title: 'Title',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: 'assets/1.jpg',
    price: 'Price',
    photographer: 'Photograher',
    title: 'Title',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: 'assets/2.jpg',
    price: 'Price',
    photographer: 'Photographer',
    title: 'Title',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: 'assets/3.jpg',
    price: 'Price',
    photographer: 'Photographer',
    title: 'Title',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
];

List<ImageDetails> suggestedImages = [];

List<ImageDetails> fillImagesWithArea(List<ImageDetails> all, double userArea) {
  int filterFactor = 50;
  List<ImageDetails> suggestions = [];

  for (int i = 0; i < all.length; i++) {
    double currArea = all[i].area;

    if (currArea > 0) {
      if (userArea > currArea - filterFactor && userArea < currArea + filterFactor) {
        suggestions.add(all[i]);
      }
    }
  }

  return suggestions;
}
