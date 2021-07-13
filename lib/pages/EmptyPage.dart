import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/AppTheme.dart';
import 'package:zwizu_zadanie/components/AppBackButton.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({Key? key}) : super(key: key);

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
