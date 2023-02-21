import 'package:flutter/material.dart';

import '../../../core/init/theme/color/project_color.dart';

class RegisterTextField extends StatefulWidget {
  const RegisterTextField({
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
  State<RegisterTextField> createState() => _RegisterTextFieldState();
}

class _RegisterTextFieldState extends State<RegisterTextField> {
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
            // EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: widget.hintTextData,

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
    );
  }
}
