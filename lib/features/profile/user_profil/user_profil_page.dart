import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:selcuk_topluluk/core/extension/context_extension.dart';
import 'package:selcuk_topluluk/features/home_page/view/discover.dart';
import 'package:selcuk_topluluk/features/profile/community_profile.dart';
import 'package:selcuk_topluluk/features/widgets/button/custom_button.dart';

import '../../../core/constants/image/image_constatns.dart';
import '../../../core/constants/strings/homepage_strings.dart';
import '../../widgets/card/profile_header.dart';
import '../../widgets/custom_appBar/custom_app_bar.dart';

class UserProfil extends StatefulWidget {
  const UserProfil({super.key});

  @override
  State<UserProfil> createState() => _UserProfilState();
}

final String cardData =
    "Ben Ceren tıp okukuyorum uzun bir süredir moleküler biyoloji üzerine çalışmalar yapıyorum, Ben Ceren tıp okukuyorum uzun bir süredir moleküler biyoloji üzerine çalışmalar yapıyorum, Ben Ceren tıp okukuyorum uzun bir süredir moleküler biyoloji üzerine çalışmalar yapıyorum";

class _UserProfilState extends State<UserProfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: context.paddingProject,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: context.height * 0.02,
              ),
              CustomAppBar(
                  iconData: Icon(
                    Icons.chevron_left,
                    color: Colors.black,
                  ),
                  title: "Mesajlar",
                  rightWidget: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => CommunityProfile()));
                      },
                      icon: Icon(
                        Icons.sentiment_satisfied_alt,
                        color: Colors.black,
                      ))),
              SizedBox(
                height: context.height * 0.02,
              ),
              CommunityHeader(
                comImage: ImageConstants.instance.userImage,
                comName: "Ceren Yılmaz",
                subTitle: "Tıp Fakültesi",
                circleOne: 26.5,
                circleSecond: 26,
                sizedBoxValue: 0.0,
              ),
              SizedBox(
                height: context.height * 0.02,
              ),
              ProfilInfoCard(
                header: "Bölüm",
                cardData: "Tıp",
                textHeight: 0.07,
              ),
              SizedBox(
                height: context.height * 0.02,
              ),
              ProfilInfoCard(
                header: "İlgi Alanlarım ",
                cardData: "Moleküler Biyoloji, biyomedikal sistemler, Beyin Bilgisayar Arayüzü",
                textHeight: 0.10,
              ),
              SizedBox(
                height: context.height * 0.02,
              ),
              ProfilInfoCard(
                header: "Hakkımda",
                cardData: cardData,
                textHeight: 0.18,
              ),
              SizedBox(
                height: context.height * 0.02,
              ),
              SizedBox(
                height: context.height * 0.32,
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class ProfilInfoCard extends StatelessWidget {
  const ProfilInfoCard({
    Key? key,
    required this.header,
    required this.cardData,
    required this.textHeight,
  }) : super(key: key);

  final String header;
  final String cardData;
  final double textHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(header),
        SizedBox(
          height: context.height * 0.01,
        ),
        Container(
          height: context.height * textHeight,
          width: context.width * 0.9,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey[200]),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(cardData),
          ),
        ),
      ],
    );
  }
}
