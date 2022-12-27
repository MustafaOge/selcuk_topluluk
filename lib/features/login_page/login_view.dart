import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:selcuk_topluluk/core/extension/context_extension.dart';
import 'package:selcuk_topluluk/features/home_page/view/discover.dart';

import '../../core/constants/strings/authenticate_strings.dart';
import '../widgets/accuant_control/accuant_control_widget.dart';
import '../widgets/button/custom_button.dart';
import '../widgets/text_field/register_text_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: context.paddingProject,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: context.height * 0.05,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.chevron_left_outlined,
                      color: Colors.black,
                    ),
                    iconSize: 48,
                  ),
                  SizedBox(
                    width: context.width * 0.5,
                  )
                ],
              ),
              Text(
                AuthenticateStrings.loginButton,
                style: context.myTextTheme.button,
              ),
              Text(AuthenticateStrings.newAccount, style: context.myTextTheme.headline2),
              RegisterTextField(
                fieldTitle: AuthenticateStrings.email,
                hintTextData: AuthenticateStrings.nullText,
                fieldSet: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                obscureTextControl: false,
              ),
              Column(
                children: [
                  RegisterTextField(
                    fieldTitle: AuthenticateStrings.password,
                    hintTextData: AuthenticateStrings.nullText,
                    fieldSet: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    obscureTextControl: true,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: context.width * 0.01,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            AuthenticateStrings.forgotPassword,
                            style: TextStyle(fontSize: 16),
                          ))
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: context.height * 0.15,
              ),
              SizedBox(
                width: context.highWidthValue * 10,
                height: context.lowHightValue * 6,
                child: customProjectButton(
                  nextPageName: DiscoverPage(loginContrl: true),
                  buttonText: AuthenticateStrings.loginButton,
                ),
              ),
              AccuantControlText(
                textColor: Colors.grey,
                textleft: AuthenticateStrings.accuantControlLogin,
                buttonText: AuthenticateStrings.registerButton,
              ),
            ]),
      ),
    );
  }
}
