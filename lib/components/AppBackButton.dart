import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zwizu_zadanie/AppTheme.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
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
    );
  }
}