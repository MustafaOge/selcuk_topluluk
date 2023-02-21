import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:selcuk_topluluk/core/extension/context_extension.dart';
import 'package:selcuk_topluluk/features/profile/community_settings.dart/community_settings.dart';
import 'package:selcuk_topluluk/features/home_page/view/discover.dart';
import 'package:selcuk_topluluk/features/onboarding/onboarding_view.dart';
import 'package:selcuk_topluluk/features/widgets/button/custom_button.dart';

import '../../../core/constants/image/image_constatns.dart';
import '../../../core/constants/strings/homepage_strings.dart';
import '../../widgets/card/post_card.dart';
import '../../widgets/card/profile_header.dart';
import '../../widgets/custom_appBar/custom_app_bar.dart';
import '../../widgets/story_widget/story_widget.dart';

class CommunityProfile1 extends StatefulWidget {
  const CommunityProfile1({super.key});

  @override
  State<CommunityProfile1> createState() => _CommunityProfile1State();
}

class _CommunityProfile1State extends State<CommunityProfile1> {
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
                comImage: ImageConstants.instance.btt,
                comName: HomePageString.nameBtt,
                subTitle: "Teknoloji Fakültesi",
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
                      "Sizleri de aramızda görmek isteriz ",
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
                        Text("2017"),
                        Text("Kuruluş Yılı"),
                      ],
                    ),
                    _verticalDivider(),
                    Column(
                      children: [
                        Text("148"),
                        Text("Üye Sayısı"),
                      ],
                    ),
                    _verticalDivider(),
                    Column(
                      children: [
                        Text("Etkinlik"),
                        Text("15"),
                      ],
                    ),
                  ],
                ),
              ),
              horizontalVertical(),
              StoryWidget(),
              horizontalVertical(),
              PostCard(
                comImage: ImageConstants.instance.btt,
                comName: HomePageString.nameBtt,
                comPostTime: HomePageString.postTime,
                comPostIamge: ImageConstants.instance.postBtt1,
                comPostText: HomePageString.postBtt1,
                buttonLikeCount: 82,
                routeName: "communityProfile",
                route: false,
              ),
              PostCard(
                comImage: ImageConstants.instance.btt,
                comName: HomePageString.nameBtt,
                comPostTime: HomePageString.postTime,
                comPostIamge: ImageConstants.instance.postBtt2,
                comPostText: HomePageString.postBtt2,
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
