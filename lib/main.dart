import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/apptheme.dart';
import 'package:zwizu_zadanie/pages/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zwizu zadanie',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: HomePage(),
    );
  }
}
