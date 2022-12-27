import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:selcuk_topluluk/core/extension/context_extension.dart';
import 'package:selcuk_topluluk/core/init/theme/color/project_color.dart';

import '../../core/constants/strings/post_share.dart';
import '../home_page/view/discover.dart';
import '../widgets/button/custom_button.dart';
import '../widgets/custom_appBar/custom_app_bar.dart';
import '../widgets/text_field/register_text_field.dart';

class PostShareView extends StatefulWidget {
  const PostShareView({super.key});

  @override
  State<PostShareView> createState() => _PostShareViewState();
}

class _PostShareViewState extends State<PostShareView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: context.paddingProject,
          child: Column(
            children: [
              SizedBox(
                height: context.height * 0.02,
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: CustomAppBar(
                    iconData:
                        Icon(Icons.chevron_left, size: context.height * 0.01, color: CustomColors.instance.iconColor),
                    title: PostShareStrings.community,
                    rightWidget: SizedBox(
                      width: context.height * 0.01,
                    )),
              ),
              SizedBox(
                height: context.height * 0.05,
              ),
              const RegisterTextField(
                fieldTitle: PostShareStrings.explanation,
                hintTextData: PostShareStrings.hintTextDetail,
                fieldSet: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                obscureTextControl: false,
              ),
              SizedBox(
                height: context.height * 0.05,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Stack(
                      children: [
                        RegisterTextField(
                          fieldTitle: "Fotoğraf Çekin",
                          hintTextData: "",
                          fieldSet: EdgeInsets.fromLTRB(20.0, 70.0, 20.0, 90.0),
                          obscureTextControl: false,
                        ),
                        Positioned(
                          height: 50,
                          right: context.width * 0.15,
                          top: context.height * 0.11,
                          child: Icon(
                            size: 45,
                            Icons.photo_camera_back_rounded,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(flex: 1, child: SizedBox()),
                  Expanded(
                    flex: 4,
                    child: Stack(
                      children: [
                        RegisterTextField(
                          fieldTitle: "Fotoğraf Çekin",
                          hintTextData: "",
                          fieldSet: EdgeInsets.fromLTRB(20.0, 70.0, 20.0, 90.0),
                          obscureTextControl: false,
                        ),
                        Positioned(
                          height: 50,
                          right: context.width * 0.15,
                          top: context.height * 0.11,
                          child: Icon(
                            size: 45,
                            Icons.camera_alt_outlined,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: context.height * 0.11,
              ),
              SizedBox(
                width: context.highWidthValue * 10,
                height: context.lowHightValue * 6,
                child: customProjectButton(
                  nextPageName: DiscoverPage(
                    loginContrl: true,
                  ),
                  buttonText: "Paylaş",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
