import 'package:flutter/material.dart';
import 'package:selcuk_topluluk/core/extension/context_extension.dart';
import 'package:selcuk_topluluk/features/home_page/view/discover.dart';
import 'package:selcuk_topluluk/features/register_page/register_view.dart';

class customProjectButton extends StatelessWidget {
  const customProjectButton({
    Key? key,
    required this.buttonText,
    required this.nextPageName,
  }) : super(key: key);
  final String buttonText;
  final Widget nextPageName;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => nextPageName));
      },
      child: Text(
        buttonText,
        style: context.myTextTheme.headline1,
      ),
    );
  }
}

class customProjectButtonWhite extends StatelessWidget {
  const customProjectButtonWhite({
    Key? key,
    required this.buttonText,
  }) : super(key: key);
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0.0,
        shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1.5,
              color: Colors.black26,
            ),
            borderRadius: BorderRadius.circular(10)),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DiscoverPage(
                  loginContrl: false,
                )));
      },
      child: Text(
        buttonText,
        style: context.myTextTheme.button,
      ),
    );
  }
}
