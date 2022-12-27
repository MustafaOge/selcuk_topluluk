class ImageConstants {
  ImageConstants._init();
  static ImageConstants? _instace;

  static ImageConstants get instance => _instace ??= ImageConstants._init();

  String get onBoardingImage1 => toPng('onBoardingImage1');
  String get onBoardingImage2 => toPng('onBoardingImage2');
  String get onBoardingImage3 => toPng('onBoardingImage3');
  String get postImage => toPng('postImage');
  String get gdg => toPng('gdg');
  String get welcome => toPng('welcome');
  String get splash => toPng('splash');
  String get userImage => toPng('userImage');
  String get profilBackground => toPng('profilBackground');

  String toPng(String name) => 'assets/images/onboarding/$name.jpg';
}
//ImageConstants.instance.onBoardingImage1