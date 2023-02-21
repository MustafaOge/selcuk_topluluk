import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/init/theme/color/project_color.dart';

class RegisterTextField2 extends StatefulWidget {
  const RegisterTextField2({
    Key? key,
    required this.hintTextData,
    required this.fieldTitle,
    required this.fieldSet,
    required this.obscureTextControl,
  }) : super(key: key);
  final EdgeInsets fieldSet;
  final String hintTextData;
  final String fieldTitle;
  final bool obscureTextControl;

  @override
  State<RegisterTextField2> createState() => _RegisterTextField2State();
}

class _RegisterTextField2State extends State<RegisterTextField2> {
  @override
  TextEditingController nameController = TextEditingController();
  String email = '';

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.fieldTitle,
          style: TextStyle(fontSize: 17),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: widget.obscureTextControl,
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
            contentPadding: widget.fieldSet,

            suffixIcon: IconButton(
                icon: FaIcon(Icons.send),
                onPressed: () {
                  debugPrint('222');
                }),
            // EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: widget.hintTextData,

            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 32.0),
              borderRadius: BorderRadius.circular(0.0),
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
    );
  }
}
