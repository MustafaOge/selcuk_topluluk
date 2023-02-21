class ImageConstants {
  ImageConstants._init();
  static ImageConstants? _instace;

  static ImageConstants get instance => _instace ??= ImageConstants._init();

  String get onBoardingImage1 => toPng('onBoardingImage1');
  String get onBoardingImage2 => toPng('onBoardingImage2');
  String get onBoardingImage3 => toPng('onBoardingImage3');
  String get postImage => toPng('postImage');

  String get welcome => toPng('welcome');
  String get splash => toPng('splash');
  String get userImage => toPng('userImage');
  String get profilBackground => toPng('profilBackground');
  //Com Image
  String get ydt => toPng('logoYdt');
  String get gdg => toPng('logoGdg');
  String get hukuk => toPng('logoHukuk');
  String get kitap => toPng('logoKitap');
  String get btt => toPng('logoBtt');

  //Post Image
  String get postBtt1 => toPng('postBtt1');
  String get postBtt2 => toPng('postBtt2');
  String get postHukuk1 => toPng('postHukuk1');
  String get postKitap1 => toPng('postKitap1');
  String get logoTip => toPng('logoTip');
  String get postTip => toPng('postTip');

  String toPng(String name) => 'assets/images/onboarding/$name.jpg';
}
//ImageConstants.instance.onBoardingImage1


