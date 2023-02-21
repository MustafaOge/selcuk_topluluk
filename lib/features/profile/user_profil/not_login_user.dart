import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:selcuk_topluluk/core/extension/context_extension.dart';
import 'package:selcuk_topluluk/features/login_page/login_view.dart';
import 'package:selcuk_topluluk/features/test/testLogin.dart';

import '../../../core/constants/image/image_constatns.dart';
import '../../../core/constants/strings/authenticate_strings.dart';
import '../../register_page/register_view.dart';
import '../../widgets/button/custom_button.dart';

class NotLoginUser extends StatefulWidget {
  const NotLoginUser({super.key});

  @override
  State<NotLoginUser> createState() => _NotLoginUserState();
}

class _NotLoginUserState extends State<NotLoginUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              ImageConstants.instance.profilBackground,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: context.paddingProject,
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          "Profilinizi Görüntülemek için Giriş Yapın",
                          style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Colors.black, fontSize: 18),
                        ),
                        SizedBox(
                          height: context.height * 0.05,
                        ),
                        SizedBox(
                          width: context.highWidthValue * 10,
                          height: context.lowHightValue * 6,
                          child: customProjectButton(
                            nextPageName: LoginViewTest(),
                            buttonText: "Giriş Yap",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
