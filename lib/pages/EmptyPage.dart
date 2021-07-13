import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zwizu_zadanie/apptheme.dart';

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
        title: TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              FaIcon(
                FontAwesomeIcons.chevronLeft,
                color: AppTheme.yellow,
                size: 16,
              ),
              SizedBox(width: 7),
              Text(
                "Spět",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: AppTheme.yellow,
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
