class OnboardingModel {
  final image;
  final title;
  final descp;

  OnboardingModel({this.image, this.title, this.descp});
}

List<OnboardingModel> onboardingContent = [
  OnboardingModel(
      title: 'Welcome to Backover',
      image:
          'https://res.cloudinary.com/dguy8qpzi/image/upload/v1632546428/backover-1_qbzqax.png',
      descp: "Let's give your backyard a makeover!"),
  OnboardingModel(
      title: 'Get inspired',
      image:
          'https://res.cloudinary.com/dguy8qpzi/image/upload/v1632653808/garden2-removebg-preview_svdhwy.png',
      descp: "Check out designs that will look best on your garden!"),
  OnboardingModel(
      title: 'Keep it beautiful',
      image:
          'https://res.cloudinary.com/dguy8qpzi/image/upload/v1632653384/garden-removebg-preview_ecmpin.png',
      descp: "Maintain the garden with disease detection"),
];
