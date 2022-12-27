import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:selcuk_topluluk/core/extension/context_extension.dart';
import 'package:selcuk_topluluk/features/widgets/card/profile_header.dart';

import '../../../core/constants/image/image_constatns.dart';
import '../../../core/constants/strings/homepage_strings.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    Key? key,
    required this.comImage,
    required this.comName,
    required this.comPostTime,
    required this.comPostIamge,
    required this.comPostText,
  }) : super(key: key);
  final String comImage;
  final String comName;
  final String comPostText;

  final String comPostTime;
  final String comPostIamge;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: context.paddingProject,
        child: Column(
          children: [
            SizedBox(
              height: 15.0,
            ),
            CommunityHeader(
              comImage: comImage,
              comName: comName,
              subTitle: comPostTime,
              circleOne: 26.5,
              circleSecond: 26,
              sizedBoxValue: 0.0,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              comPostText,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            Stack(
              children: [
                Container(
                  height: context.height * 0.32,
                  width: context.width * 0.90,
                  child: Image.asset(
                    comPostIamge,
                  ),
                ),
                Positioned(
                  top: 220,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.comment_outlined),
                        color: Colors.black,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: FaIcon(FontAwesomeIcons.heart),
                        color: Colors.red,
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}


/*

          radius: 26.5,
 radius: 26,
          width: 8,

*/