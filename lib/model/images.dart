class ImageDetails {
  final String imagePath;
  final String price;
  final String photographer;
  final String title;
  final String details;
  var area;

  ImageDetails({
    required this.imagePath,
    required this.price,
    required this.photographer,
    required this.title,
    required this.details,
    this.area
  });
}
