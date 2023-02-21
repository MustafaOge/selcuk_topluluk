import 'package:flutter/material.dart';

import '../../../core/constants/strings/authenticate_strings.dart';

class AccuantControlText extends StatelessWidget {
  const AccuantControlText({
    Key? key,
    required this.textColor,
    required this.textleft,
    required this.buttonText,
    required this.pageRoute,
  }) : super(key: key);
  final Color textColor;
  final String textleft;
  final String buttonText;
  final String pageRoute;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textleft,
          style: TextStyle(color: textColor),
        ),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, pageRoute);
            },
            child: Text(
              buttonText,
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16),
            ))
      ],
    );
  }
}
