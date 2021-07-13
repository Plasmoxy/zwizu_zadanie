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
      );

  static ButtonStyle get blackElevatedButton => ElevatedButton.styleFrom(
        primary: AppTheme.black,
        onPrimary: AppTheme.yellow,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.symmetric(horizontal: 23, vertical: 12),
        textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
      );

  static ButtonStyle get blackOutlinedButton => OutlinedButton.styleFrom(
        primary: AppTheme.black,
        side: BorderSide(width: 2.0, color: AppTheme.black),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.symmetric(horizontal: 23, vertical: 12),
        textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
      );
}
