import 'package:flutter/material.dart';
import 'package:selcuk_topluluk/core/extension/context_extension.dart';
import 'package:selcuk_topluluk/core/init/theme/color/project_color.dart';

import '../../core/constants/image/image_constatns.dart';
import '../../core/constants/strings/homepage_strings.dart';
import '../widgets/card/profile_header.dart';
import '../widgets/custom_appBar/custom_app_bar.dart';
import '../widgets/text_field/text_field.dart';

class MessageView extends StatefulWidget {
  const MessageView({super.key});

  @override
  State<MessageView> createState() => _MessageViewState();
}

class _MessageViewState extends State<MessageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: context.paddingProject / 2,
          child: Column(
            children: [
              CustomAppBar(
                  iconData: Icon(
                    Icons.chevron_left,
                    color: Colors.black,
                  ),
                  title: "Mesajlar",
                  rightWidget: SizedBox(
                    height: context.width * 0.01,
                  )),
              SizedBox(
                height: context.height * 0.1,
                width: context.width * 0.90,
                child: CustomTextField(
                  hintTextData: "Ara...",
                ),
              ),
              MessageCard(
                  communityImage: ImageConstants.instance.gdg,
                  communityName: HomePageString.community,
                  finalMessage: "finalMessage",
                  notificationNumber: "2",
                  messageDate: "08.12"),
              SizedBox(
                height: context.height * 0.01,
              ),
              MessageCard(
                  communityImage: ImageConstants.instance.gdg,
                  communityName: HomePageString.community,
                  finalMessage: "finalMessage",
                  notificationNumber: "2",
                  messageDate: "08.12"),
              SizedBox(
                height: context.height * 0.01,
              ),
              MessageCard(
                  communityImage: ImageConstants.instance.gdg,
                  communityName: HomePageString.community,
                  finalMessage: "finalMessage",
                  notificationNumber: "2",
                  messageDate: "08.12"),
            ],
          ),
        ),
      ),
    );
  }
}

class MessageCard extends StatelessWidget {
  const MessageCard({
    Key? key,
    required this.communityImage,
    required this.communityName,
    required this.finalMessage,
    required this.notificationNumber,
    required this.messageDate,
  }) : super(key: key);
  final String communityImage;
  final String communityName;
  final String finalMessage;
  final String notificationNumber;
  final String messageDate;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, 'chatPage'),
      child: Container(
        decoration:
            BoxDecoration(color: CustomColors.instance.buttonTextColor, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 12, top: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommunityHeader(
                comImage: communityImage,
                comName: communityName,
                subTitle: finalMessage,
                circleOne: 26.5,
                circleSecond: 26,
                sizedBoxValue: 5.0,
              ),
              Column(
                children: [
                  Text(messageDate),
                  SizedBox(
                    height: context.height * 0.03,
                    child: MaterialButton(
                      color: CustomColors.instance.buttonBackGroundColor,
                      shape: const CircleBorder(),
                      onPressed: () {},
                      child: Text(
                        '1',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  )
                  // ElevatedButton(
                  //   child: Text(
                  //     notificationNumber,
                  //     style: TextStyle(fontSize: 14),
                  //   ),
                  //   onPressed: () {},
                  //   style: ElevatedButton.styleFrom(
                  //     backgroundColor: CustomColors.instance.buttonBackGroundColor,
                  //     fixedSize: Size(5, 10),
                  //     shape: CircleBorder(),
                  //   ),
                  // ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
