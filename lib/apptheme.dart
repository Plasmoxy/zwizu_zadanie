import 'dart:ui';

import 'package:flutter/material.dart';

class AppTheme {
  static const yellow = Color(0xffffd302);
  static const black = Color(0xff161616);
  static const grey = Color(0xff373737);
  static const grey50 = Color(0xff8d8d8d);
  static const grey30 = Color(0xffc6c6c6);

  static ThemeData get theme => ThemeData(
        primaryColor: yellow,
        accentColor: yellow,
        backgroundColor: black,
        splashColor: yellow,
        highlightColor: yellow,
        brightness: Brightness.dark,
        fontFamily: "Silka",
        cardTheme: CardTheme(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          headline2: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          button: TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      );

  static ButtonStyle get blackElevatedButton => ElevatedButton.styleFrom(
        primary: AppTheme.black,
        onPrimary: AppTheme.yellow,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.symmetric(horizontal: 26, vertical: 15),
      );

  static ButtonStyle get blackOutlinedButton => OutlinedButton.styleFrom(
        primary: AppTheme.black,
        side: BorderSide(width: 2.0, color: AppTheme.black),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.symmetric(horizontal: 26, vertical: 15),
      );

  static ImageFilter blurFilter = ImageFilter.blur(
    sigmaX: 6.0,
    sigmaY: 6.0,
  );
}
