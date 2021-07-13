import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zwizu_zadanie/AppTheme.dart';
import 'package:zwizu_zadanie/components/AppBackButton.dart';

class VideoPlayerPage extends StatelessWidget {
  const VideoPlayerPage({Key? key}) : super(key: key);

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
