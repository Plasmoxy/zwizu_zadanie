import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:zwizu_zadanie/AppTheme.dart';
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
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('cs'),
        const Locale('sk'),
      ],
      locale: const Locale('cs'),
      theme: AppTheme.theme,
      home: HomePage(),
    );
  }
}
