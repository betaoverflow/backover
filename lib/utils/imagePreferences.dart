import 'package:backover/model/images.dart';

List<ImageDetails> images = [
  ImageDetails(
    imagePath: 'https://res.cloudinary.com/dguy8qpzi/image/upload/v1632654980/backyard3_ksdo9o.jpg',
    photographer: 'John Doe',
    location: 'New york',
    area: 200.0,
  ),
  ImageDetails(
    imagePath: 'https://res.cloudinary.com/dguy8qpzi/image/upload/v1632655010/backyard1_ip7ggv.jpg',
    photographer: 'John Doe',
    location: 'New york',
    area: 100.0,
  ),
  ImageDetails(
    imagePath: 'https://res.cloudinary.com/dguy8qpzi/image/upload/v1632654981/backyard2_ihhiah.jpg',
    photographer: 'John Doe',
    location: 'New york',
    area: 500.0,
  ),
  ImageDetails(
    imagePath: 'https://res.cloudinary.com/dguy8qpzi/image/upload/v1632654980/backyard4_ypdlay.jpg',
    photographer: 'Photograher',
    location: 'Location',
    area: 60.0,
  ),
  ImageDetails(
    imagePath: 'https://res.cloudinary.com/dguy8qpzi/image/upload/v1632654979/backyard5_mctt3v.jpg',
    photographer: 'John Doe',
    location: 'New york',
    area: 243.0,
  ),
  ImageDetails(
    imagePath: 'https://res.cloudinary.com/dguy8qpzi/image/upload/v1632654978/backyard6_i4vwrw.jpg',
    photographer: 'John Doe',
    location: 'New york',
    area: 100.0,
  ),
    ImageDetails(
    imagePath: 'https://res.cloudinary.com/dguy8qpzi/image/upload/v1632654980/backyard3_ksdo9o.jpg',
    photographer: 'John Doe',
    location: 'New york',
    area: 200.0,
  ),
  ImageDetails(
    imagePath: 'https://res.cloudinary.com/dguy8qpzi/image/upload/v1632655010/backyard1_ip7ggv.jpg',
    photographer: 'John Doe',
    location: 'New york',
    area: 100.0,
  ),
  ImageDetails(
    imagePath: 'https://res.cloudinary.com/dguy8qpzi/image/upload/v1632654981/backyard2_ihhiah.jpg',
    photographer: 'John Doe',
    location: 'New york',
    area: 500.0,
  ),
  ImageDetails(
    imagePath: 'https://res.cloudinary.com/dguy8qpzi/image/upload/v1632654980/backyard4_ypdlay.jpg',
    photographer: 'Photograher',
    location: 'Location',
    area: 20.0,
  ),
  ImageDetails(
    imagePath: 'https://res.cloudinary.com/dguy8qpzi/image/upload/v1632654979/backyard5_mctt3v.jpg',
    photographer: 'John Doe',
    location: 'New york',
    area: 223.0,
  ),
  ImageDetails(
    imagePath: 'https://res.cloudinary.com/dguy8qpzi/image/upload/v1632654978/backyard6_i4vwrw.jpg',
    photographer: 'John Doe',
    location: 'New york',
    area: 50.0,
  )
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
