import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:selcuk_topluluk/core/extension/context_extension.dart';
import 'package:selcuk_topluluk/features/profile/community_settings.dart/community_settings.dart';
import 'package:selcuk_topluluk/features/home_page/view/discover.dart';
import 'package:selcuk_topluluk/features/onboarding/onboarding_view.dart';
import 'package:selcuk_topluluk/features/widgets/button/custom_button.dart';

import '../../core/constants/image/image_constatns.dart';
import '../../core/constants/strings/homepage_strings.dart';
import '../test/sonradanKaldirilacak/story_widget2.dart';
import '../widgets/card/post_card.dart';
import '../widgets/card/profile_header.dart';
import '../widgets/custom_appBar/custom_app_bar.dart';
import '../widgets/story_widget/story_widget.dart';

class CommunityProfile extends StatefulWidget {
  const CommunityProfile({super.key});

  @override
  State<CommunityProfile> createState() => _CommunityProfileState();
}

class _CommunityProfileState extends State<CommunityProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: context.paddingProject,
          child: Column(
            children: [
              SizedBox(
                height: context.height * 0.015,
              ),
              CustomAppBar(
                iconData: Icon(Icons.chevron_left, size: 24, color: Colors.black),
                title: "Topluluk",
                rightWidget: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'homeScreen');
                    },
                    icon: Icon(
                      Icons.settings,
                      color: Colors.black54,
                    )),
              ),
              SizedBox(
                height: context.height * 0.015,
              ),
              CommunityHeader(
                comImage: ImageConstants.instance.hukuk,
                comName: HomePageString.nameHukuk,
                subTitle: "Hukuk Fakültesi",
                circleOne: 36,
                circleSecond: 36.5,
                sizedBoxValue: 5.0,
                route: false,
                routeAdress: "null",
              ),
              SizedBox(
                height: context.height * 0.015,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: Text(
                      "HKT, Selçuk Üniversitesi Hukuk Fakültesi bünyesinde çalışma yürüten en geniş kapsamlı, öğrenci oluşumu bir topluluktur.",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        customProjectButton(buttonText: "Bilgi", nextPageName: CommunitySetting()),
                      ],
                    ),
                  )
                ],
              ),
              RotatedBox(
                quarterTurns: 1,
                child: Divider(
                  color: Colors.black,
                  endIndent: 10,
                  height: 10,
                ),
              ),
              Padding(
                padding: context.paddingProject,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("2016"),
                        Text("Kuruluş Yılı"),
                      ],
                    ),
                    _verticalDivider(),
                    Column(
                      children: [
                        Text("258"),
                        Text("Üye Sayısı"),
                      ],
                    ),
                    _verticalDivider(),
                    Column(
                      children: [
                        Text("Etkinlik"),
                        Text("24"),
                      ],
                    ),
                  ],
                ),
              ),
              horizontalVertical(),
              StoryWidget3(),
              horizontalVertical(),
              PostCard(
                comImage: ImageConstants.instance.hukuk,
                comName: HomePageString.nameHukuk,
                comPostTime: HomePageString.postTime,
                comPostIamge: ImageConstants.instance.postHukuk1,
                comPostText: HomePageString.postHukuk,
                buttonLikeCount: 82,
                routeName: "communityProfile",
                route: false,
              ),
              PostCard(
                comImage: ImageConstants.instance.hukuk,
                comName: HomePageString.nameHukuk,
                comPostTime: HomePageString.postTime,
                comPostIamge: ImageConstants.instance.postHukuk1,
                comPostText: HomePageString.postHukuk,
                buttonLikeCount: 82,
                routeName: "communityProfile",
                route: false,
              ),
              PostCard(
                comImage: ImageConstants.instance.hukuk,
                comName: HomePageString.nameHukuk,
                comPostTime: HomePageString.postTime,
                comPostIamge: ImageConstants.instance.postHukuk1,
                comPostText: HomePageString.postHukuk,
                buttonLikeCount: 82,
                routeName: "communityProfile",
                route: false,
              ),
            ],
          ),
        )),
      ),
    );
  }

  Divider horizontalVertical() {
    return Divider(
      color: Colors.black54,
      thickness: 2,
      // indent: 5,
      // endIndent: 5,
    );
  }

  Container _verticalDivider() {
    return Container(
      height: context.height * 0.10,
      padding: const EdgeInsets.all(10),
      child: VerticalDivider(
        color: Colors.black54,
        thickness: 2,
        indent: 20,
        endIndent: 0,
        width: 20,
      ),
    );
  }
}
