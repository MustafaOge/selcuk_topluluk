import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:selcuk_topluluk/core/extension/context_extension.dart';
import 'package:selcuk_topluluk/features/home_page/view/discover.dart';
import 'package:selcuk_topluluk/features/profile/community_profile.dart';
import 'package:selcuk_topluluk/features/test/login_test.dart';

import '../../core/constants/strings/authenticate_strings.dart';
import '../../core/init/theme/color/project_color.dart';
import '../widgets/accuant_control/accuant_control_widget.dart';
import '../widgets/button/custom_button.dart';
import '../widgets/text_field/register_text_field.dart';

class LoginViewTest extends StatefulWidget {
  const LoginViewTest({super.key});

  @override
  State<LoginViewTest> createState() => _LoginViewTestState();
}

class _LoginViewTestState extends State<LoginViewTest> {
  TextEditingController nameController = TextEditingController();
  TextEditingController nameController2 = TextEditingController();

  String email = '';
  String password = '';
  static String result = '';

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email ",
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(
                    height: context.height * 0.01,
                  ),
                  TextField(
                    obscureText: false,
                    controller: nameController,
                    style: TextStyle(fontSize: 17.0),
                    decoration: InputDecoration(
                      filled: false,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: CustomColors.instance.registerTextFieldColor, width: 32.0),
                          borderRadius: BorderRadius.circular(17.0)),
                      hoverColor: Colors.white,
                      focusColor: Colors.white,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      // EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      hintText: AuthenticateStrings.nullText,

                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 32.0),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    onChanged: (text) {
                      setState(() {
                        email = text;

                        //you can access nameController in its scope to get
                        // the value of text entered as shown below
                        //fullName = nameController.text;
                      });
                    },
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Parola",
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(
                    height: context.height * 0.01,
                  ),
                  TextField(
                    obscureText: true,
                    controller: nameController2,
                    style: TextStyle(fontSize: 17.0),
                    decoration: InputDecoration(
                      filled: false,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: CustomColors.instance.registerTextFieldColor, width: 32.0),
                          borderRadius: BorderRadius.circular(17.0)),
                      hoverColor: Colors.white,
                      focusColor: Colors.white,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      // EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      hintText: AuthenticateStrings.nullText,

                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 32.0),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    onChanged: (text) {
                      setState(() {
                        password = text;

                        //you can access nameController in its scope to get
                        // the value of text entered as shown below
                        //fullName = nameController.text;
                      });
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: context.width * 0.01,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'ForgotPassword');
                          },
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
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (email == "mustafa@gmail.com" || password == "12345") {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DiscoverPage(
                                  loginContrl: true,
                                )));
                      } else {
                        result = "Girdiğiniz Email adresi veya parolanız yanlış";
                      }
                    });
                  },
                  child: Text(
                    "Giriş Yap",
                    style: context.myTextTheme.headline1,
                  ),
                ),
              ),
              Text(
                result,
                style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.red),
              ),
              AccuantControlText(
                textColor: Colors.grey,
                textleft: AuthenticateStrings.accuantControlLogin,
                buttonText: AuthenticateStrings.registerButton,
                pageRoute: "registerView",
              ),
            ]),
      ),
    );
  }
}
