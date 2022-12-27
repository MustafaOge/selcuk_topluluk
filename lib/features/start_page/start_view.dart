import 'package:flutter/material.dart';
import 'package:selcuk_topluluk/core/extension/context_extension.dart';
import 'package:selcuk_topluluk/features/widgets/button/custom_button.dart';

import '../../core/constants/image/image_constatns.dart';
import '../home_page/view/discover.dart';

class StartView extends StatefulWidget {
  const StartView({super.key});

  @override
  State<StartView> createState() => _StartViewState();
}

class _StartViewState extends State<StartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: context.paddingProject,
          child: Column(
            children: [
              SizedBox(
                height: context.height * 0.15,
              ),
              Image.asset(
                ImageConstants.instance.welcome,
              ),
              SizedBox(
                width: context.highWidthValue * 10,
                height: context.lowHightValue * 6,
                // ignore: prefer_const_constructors
                child: customProjectButton(
                  nextPageName: DiscoverPage(
                    loginContrl: false,
                  ),
                  buttonText: "Devam Et",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
