import 'package:flutter/material.dart';

import '../../profile/community_profile.dart';

class CommunityHeader extends StatelessWidget {
  const CommunityHeader({
    Key? key,
    required this.comImage,
    required this.comName,
    required this.subTitle,
    required this.circleOne,
    required this.circleSecond,
    required this.sizedBoxValue,
    required this.routeAdress,
    required this.route,
  }) : super(key: key);

  final String comImage;
  final String comName;
  final String subTitle;
  final double circleOne;
  final double circleSecond;
  final double sizedBoxValue;
  final String routeAdress;
  final bool route;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (route) {
          Navigator.pushNamed(context, routeAdress);
        } else if (route) {
          print("null");
        }
      },

      // Navigator.of(context).push(MaterialPageRoute(builder: (context) => CommunityProfile())),
      child: Row(
        children: [
          CircleAvatar(
            radius: circleOne,
            backgroundColor: Colors.green,
            child: CircleAvatar(
                radius: circleSecond,
                backgroundImage: AssetImage(
                  comImage,
                )),
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                comName,
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: sizedBoxValue,
              ),
              Text(subTitle),
            ],
          )
        ],
      ),
    );
  }
}
