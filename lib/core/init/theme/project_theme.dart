import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static AppTheme? _instance;
  AppTheme._();
  static AppTheme get instance => _instance ??= AppTheme._();

  ThemeData get theme => ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF1C6758), // background (button) color
              foregroundColor: Colors.white, // foreground (text) color
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        ),
        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.white, size: 24),
            titleTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        iconTheme: const IconThemeData(color: Colors.white, size: 24),
        cardColor: Colors.white,
        cardTheme: const CardTheme(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(18.0),
              ),
            )),
        textTheme: _textTheme(),
        colorScheme: ColorScheme.light(
          primary: const Color(0xFF76acb8),
          onPrimary: Colors.grey[100]!,
          onSecondary: Colors.black,
          secondary: Colors.green,
          onError: Colors.red,
          secondaryContainer: Colors.grey.shade100,
        ),
      );

  TextTheme _textTheme() {
    return const TextTheme(
      button: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
      headline1: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
      headline2: TextStyle(fontSize: 16, color: Colors.black54, fontWeight: FontWeight.w600),
      headline3: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black),
      headline4: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
      headline6: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w400),
      bodyText1: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
    );
  }
}
