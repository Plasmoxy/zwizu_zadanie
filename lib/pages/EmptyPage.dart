import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/AppTheme.dart';
import 'package:zwizu_zadanie/components/AppBackButton.dart';

/// Empty page with a back button
class EmptyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: AppTheme.black,
        automaticallyImplyLeading: false,
        title: AppBackButton(),
      ),
    );
  }
}
