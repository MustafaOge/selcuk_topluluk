import 'package:flutter/material.dart';

class CustomColors {
  static CustomColors? _instance;
  CustomColors._();
  static CustomColors get instance => _instance ??= CustomColors._();

  BoxShadow containerBoxShadow = BoxShadow(
    color: Colors.grey[100]!,
    blurRadius: 2.0,
    spreadRadius: 0.0,
    offset: const Offset(0, 2.0), // shadow direction: bottom right
  );

//Button
  Color buttonBackGroundColor = Color(0xFF1C6758);
  Color buttonBackGroundColorW = Colors.white;
  Color buttonTextColor = Colors.white;
  Color buttonTextColorW = Colors.black;
  Color iconColor = Colors.black;

  
//Project
  Color customBackgroundColor = Color(0xFFF4F7F6);
//TextField
  Color registerTextFieldColor = Color(0xFFF2F2F2);

  Color bottomBarrippleColor = Colors.grey[300]!;
  Color bottomBarhoverColor = Colors.grey[100]!;
  Color tabBackgroundColor = Colors.grey[100]!;
  Color bottomBarColor = Colors.black;
  Color coinColor = Colors.yellow;
}
















