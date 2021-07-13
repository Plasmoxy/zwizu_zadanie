import 'package:flutter/material.dart';

class AppTheme {
  static const yellow = Color(0xffffd302);
  static const black = Color(0xff161616);
  static const grey = Color(0xff373737);

  static ThemeData get theme => ThemeData(
        primaryColor: yellow,
        accentColor: yellow,
        backgroundColor: black,
        brightness: Brightness.dark,
        fontFamily: "Silka",
        cardTheme: CardTheme(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
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
}
