import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:selcuk_topluluk/core/extension/context_extension.dart';
import 'package:selcuk_topluluk/features/profile/community_profile.dart';
import 'package:selcuk_topluluk/features/widgets/button/custom_button.dart';
import 'package:selcuk_topluluk/features/widgets/custom_appBar/custom_app_bar.dart';

import '../../../core/constants/image/image_constatns.dart';
import '../../../core/constants/strings/authenticate_strings.dart';
import '../../../core/constants/strings/homepage_strings.dart';
import '../../home_page/view/discover.dart';
import '../../widgets/card/profile_header.dart';
import '../../widgets/text_field/register_text_field.dart';

class CommunitySetting extends StatefulWidget {
  const CommunitySetting({super.key});

  @override
  State<CommunitySetting> createState() => _CommunitySettingState();
}

class _CommunitySettingState extends State<CommunitySetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: context.paddingProject,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: context.height * 0.025,
              ),
              Container(
                child: CustomAppBar(
                    iconData: Icon(
                      Icons.chevron_left,
                      color: Colors.black,
                    ),
                    title: "Topluluk Profili",
                    rightWidget: SizedBox(
                      height: context.width * 0.01,
                    )),
              ),
              CommunityHeader(
                comImage: ImageConstants.instance.gdg,
                comName: HomePageString.community,
                subTitle: "Teknoloji Fakültesi",
                circleOne: 36,
                circleSecond: 36.5,
                sizedBoxValue: 5.0,
              ),
              RegisterTextField(
                fieldTitle: "Topluluk açıklaması kısa",
                hintTextData: "",
                fieldSet: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                obscureTextControl: false,
              ),
              RegisterTextField(
                fieldTitle: "Topluluk açıklaması uzun",
                hintTextData: "",
                fieldSet: EdgeInsets.fromLTRB(20.0, 19.0, 20.0, 25.0),
                obscureTextControl: false,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: RegisterTextField(
                      fieldTitle: "İnstagram hesabı",
                      hintTextData: "",
                      fieldSet: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      obscureTextControl: false,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: SizedBox(),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: RegisterTextField(
                      fieldTitle: "Whatsapp davet linki",
                      hintTextData: "",
                      fieldSet: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                      obscureTextControl: false,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: SizedBox(),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: RegisterTextField(
                      fieldTitle: "Topluluk mail adresi",
                      hintTextData: "",
                      fieldSet: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                      obscureTextControl: false,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: SizedBox(),
                  ),
                ],
              ),
              SizedBox(
                width: context.highWidthValue * 10,
                height: context.lowHightValue * 6,
                child: customProjectButton(
                  nextPageName: CommunityProfile(),
                  buttonText: "Güncelle",
                ),
              ),
              SizedBox(
                height: context.height * 0.04,
              )
            ],
          ),
        ),
      ),
    );
  }
}
