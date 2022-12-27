import 'package:flutter/material.dart';

class CommunityHeader extends StatelessWidget {
  const CommunityHeader({
    Key? key,
    required this.comImage,
    required this.comName,
    required this.subTitle,
    required this.circleOne,
    required this.circleSecond,
    required this.sizedBoxValue,
  }) : super(key: key);

  final String comImage;
  final String comName;
  final String subTitle;
  final double circleOne;
  final double circleSecond;
  final double sizedBoxValue;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, 'communityProfile'),
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
