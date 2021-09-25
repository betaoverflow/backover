class OnboardingModel {
  final image;
  final title;
  final descp;

  OnboardingModel({this.image, this.title, this.descp});
}

List<OnboardingModel> onboardingContent = [
  OnboardingModel(
      title: 'Welcome to A',
      image:
          'https://res.cloudinary.com/dguy8qpzi/image/upload/v1632546428/backover-1_qbzqax.png',
      descp: "Let's make over your backyard with the power of community"),
  OnboardingModel(
      title: 'Welcome to B',
      image:
          'https://res.cloudinary.com/dguy8qpzi/image/upload/v1632546428/backover-1_qbzqax.png',
      descp: "Let's make over your backyard with the power of community"),
  OnboardingModel(
      title: 'Welcome to C',
      image:
          'https://res.cloudinary.com/dguy8qpzi/image/upload/v1632546428/backover-1_qbzqax.png',
      descp: "Let's make over your backyard with the power of community"),
];
