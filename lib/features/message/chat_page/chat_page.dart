import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:selcuk_topluluk/core/extension/context_extension.dart';
import 'package:selcuk_topluluk/core/init/theme/color/project_color.dart';
import 'package:selcuk_topluluk/features/widgets/text_field/message_text_field/message_text_field.dart';

import '../../widgets/custom_appBar/custom_app_bar.dart';
import '../../widgets/text_field/register_text_field.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: context.height * 0.01,
          ),
          CustomAppBar(
              iconData: Icon(
                Icons.chevron_left_outlined,
                color: Colors.black,
              ),
              title: "Yeşilay Topluluğu",
              rightWidget: SizedBox(
                width: context.width * 0.1,
              )),
          SizedBox(
            height: context.height * 0.03,
          ),
          Padding(
            padding: context.paddingProject,
            child: Column(
              children: [
                Divider(
                  height: 2.0,
                  color: Colors.black54,
                ),
                SizedBox(
                  height: context.height * 0.7,
                  width: context.width * 1,
                  child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          MessageCardGreen(),
                          MessageCardGrey(),
                          MessageCardGreen(),
                          MessageCardGreen(),
                          MessageCardGreen(),
                          MessageCardGrey(),
                          MessageCardGreen(),
                          MessageCardGreen(),
                        ],
                      )),
                ),
                RegisterTextField2(
                  fieldTitle: " ",
                  hintTextData: "Mesaj Yaz",
                  fieldSet: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  obscureTextControl: true,
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}

class MessageCardGrey extends StatelessWidget {
  const MessageCardGrey({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: context.height * 0.01, bottom: context.height * 0.01),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xFFF2F2F2),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.zero,
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 40.0,
              maxWidth: 300.0,
              minHeight: 30.0,
              maxHeight: 1000.0,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AutoSizeText(
                    "Evet harika bir haber nu" * 2,
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                  ),
                  Align(
                    widthFactor: 6,
                    alignment: Alignment.topRight,
                    heightFactor: 0.5,
                    child: Text(
                      "12.30pm",
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MessageCardGreen extends StatelessWidget {
  const MessageCardGreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: context.height * 0.01, bottom: context.height * 0.01),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          decoration: BoxDecoration(
              color: CustomColors.instance.buttonBackGroundColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.zero,
                bottomRight: Radius.circular(20),
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 40.0,
              maxWidth: 300.0,
              minHeight: 30.0,
              maxHeight: 1000.0,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AutoSizeText(
                    "Evet harika bir haber nu" * 4,
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                  Align(
                    widthFactor: 4,
                    alignment: Alignment.topRight,
                    heightFactor: 0.5,
                    child: Text(
                      "12.30pm",
                      style: TextStyle(color: Colors.white70, fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
