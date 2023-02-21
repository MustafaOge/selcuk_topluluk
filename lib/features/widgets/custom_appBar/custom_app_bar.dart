import 'package:flutter/material.dart';
import 'package:selcuk_topluluk/core/extension/context_extension.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.iconData,
    required this.title,
    required this.rightWidget,
  }) : super(key: key);

  final Icon iconData;
  final String title;
  final Widget rightWidget;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'discoverPage');
              // Navigator.of(context).pop();
            },
            icon: iconData),
        Text(
          title,
          style: context.myTextTheme.button,
        ),
        rightWidget
      ],
    );
  }
}
