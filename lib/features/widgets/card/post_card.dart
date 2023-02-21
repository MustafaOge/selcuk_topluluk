import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:like_button/like_button.dart';
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
    required this.buttonLikeCount,
    required this.routeName,
    required this.route,
  }) : super(key: key);
  final String comImage;
  final String comName;
  final String comPostText;

  final String comPostTime;
  final String comPostIamge;
  final int buttonLikeCount;
  final String routeName;
  final bool route;

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
              routeAdress: routeName,
              route: route,
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
                  top: 232,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      LikeButton(
                        circleColor: CircleColor(start: Color(0xFFF44336), end: Color(0xFFF44336)),
                        likeBuilder: (bool isLiked) {
                          return Icon(
                            Icons.favorite,
                            size: 24,
                            color: isLiked ? Colors.red : Colors.grey,
                          );
                        },
                        likeCount: buttonLikeCount,
                      ),
                      // LikeButton(
                      //   size: 24,
                      //   circleColor: CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
                      //   bubblesColor: BubblesColor(dotPrimaryColor: Colors.red, dotSecondaryColor: Colors.red),
                      //   likeBuilder: (bool isLiked) {
                      //     return Icon(
                      //       Icons.favorite_outline_rounded,
                      //       color: isLiked ? Colors.red : Colors.grey,
                      //       size: 24,
                      //     );
                      //   },
                      //   likeCount: buttonLikeCount,
                      // ),
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