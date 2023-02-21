import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:selcuk_topluluk/features/onboarding/onboarding_view.dart';

import '../../core/constants/image/image_constatns.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const routeName = '/splash_screen';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final String logoPATH = 'asset/images/logo.png';
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, 'onBoardingView');

      // Navigator.pushNamed(context, 'onBoardingView');
      //
    });
  }

// Text("Fluevent", style: Theme.of(context).textTheme.headline6),),
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF4F6F5),
        body: SafeArea(
          child: Center(
            child: Image.asset(ImageConstants.instance.splash),
          ),
        ));
  }
}
