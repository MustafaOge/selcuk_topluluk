import 'package:flutter/material.dart';
import 'package:selcuk_topluluk/core/extension/context_extension.dart';
import 'package:selcuk_topluluk/features/start_page/start_view.dart';
import 'package:selcuk_topluluk/features/widgets/button/custom_button.dart';

import '../../core/constants/strings/authenticate_strings.dart';
import '../widgets/accuant_control/accuant_control_widget.dart';
import '../widgets/text_field/register_text_field.dart';
import '../widgets/text_field/text_field_selectable/test_fied_2.dart';
import '../widgets/text_field/text_field_selectable/text_field_3.dart';
import '../widgets/text_field/text_field_selectable/text_field_selectable.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: context.paddingProject,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Text(
                "Kayıt Ol",
                style: context.myTextTheme.button,
              ),
              Text("Yeni bir hesap oluşturmak için aşağıdaki alanları doldurun", style: context.myTextTheme.headline2),
              Column(
                children: [
                  RegisterTextField(
                    fieldTitle: "İsim Soyisim",
                    hintTextData: "",
                    fieldSet: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    obscureTextControl: false,
                  ),
                  SizedBox(
                    height: context.height * 0.02,
                  ),
                  RegisterTextField(
                    fieldTitle: "Mail Adresi",
                    hintTextData: "",
                    fieldSet: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    obscureTextControl: false,
                  ),
                  SizedBox(
                    height: context.height * 0.02,
                  ),
                  RegisterTextField(
                    fieldTitle: "Parola",
                    hintTextData: "",
                    fieldSet: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    obscureTextControl: true,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DropDownButton(),
                      Row(
                        children: [
                          DropDownButton2(),
                          SizedBox(
                            width: context.width * 0.04,
                          ),
                          DropDownButton3(),
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                width: context.highWidthValue * 10,
                height: context.lowHightValue * 6,
                child: customProjectButton(
                  nextPageName: StartView(),
                  buttonText: "Kayıt Ol",
                ),
              ),
              Center(
                child: AccuantControlText(
                  textleft: AuthenticateStrings.accuantControl,
                  buttonText: AuthenticateStrings.loginButton,
                  textColor: Colors.black,
                  pageRoute: "LoginViewTest",
                ),
              ),
              SizedBox(
                height: context.height * 0.08,
              )
            ],
          ),
        ),
      ),
    );
  }
}
