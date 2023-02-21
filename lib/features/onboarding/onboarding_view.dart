import 'package:flutter/material.dart';

import 'package:selcuk_topluluk/core/extension/context_extension.dart';
import 'package:selcuk_topluluk/features/login_page/login_view.dart';
import 'package:selcuk_topluluk/features/register_page/register_view.dart';
import 'package:selcuk_topluluk/features/widgets/carousel_slider/carousel_slider_widget.dart';

import '../../core/constants/strings/authenticate_strings.dart';
import '../../core/init/theme/color/project_color.dart';
import '../widgets/button/custom_button.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: context.paddingProjectTop,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.77, 1],
              colors: [
                Colors.white,
                Color(0xFF1C6758),
              ],
            ),
          ),
          child: Column(
            children: [
              CarouselSliderWidget(),
              Padding(
                padding: context.paddingProject,
                child: Column(
                  children: [
                    emptyBox(),
                    Text(
                      AuthenticateStrings.title,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    emptyBox(),
                    Text(
                      AuthenticateStrings.subTitle,
                      style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.w600),
                    ),
                    emptyBox2x(),
                    Stack(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              width: context.highWidthValue * 10,
                              height: context.lowHightValue * 6,
                              child: customProjectButton(
                                nextPageName: RegisterView(),
                                buttonText: AuthenticateStrings.nextButton,
                              ),
                            ),
                            emptyBox(),
                            SizedBox(
                              width: context.highWidthValue * 10,
                              height: context.lowHightValue * 6,
                              child: customProjectButtonWhite(
                                buttonText: AuthenticateStrings.lateButton,
                              ),
                            ),
                            emptyBox4x(),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    AuthenticateStrings.accuantControl,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, 'LoginViewTest');
                                      },
                                      child: Text(
                                        AuthenticateStrings.loginButton,
                                        style:
                                            TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16),
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  SizedBox emptyBox() {
    return SizedBox(height: context.height * 0.02);
  }

  SizedBox emptyBox2x() {
    return SizedBox(height: context.height * 0.04);
  }

  SizedBox emptyBox4x() {
    return SizedBox(height: context.height * 0.08);
  }

  SizedBox emptyBox6x() {
    return SizedBox(height: context.height * 0.1);
  }
}
