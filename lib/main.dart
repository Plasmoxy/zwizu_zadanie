import 'package:flutter/material.dart';
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
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        fontFamily: "Silka",
      ),
      home: HomePage(),
    );
  }
}
