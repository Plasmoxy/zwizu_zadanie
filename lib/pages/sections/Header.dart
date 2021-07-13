import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/apptheme.dart';
import 'package:zwizu_zadanie/components/AppButton.dart';
import 'package:zwizu_zadanie/components/DateCountdown.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      child: Column(
        children: [
          BackdropFilter(
            filter: new ImageFilter.blur(
              sigmaX: 6.0,
              sigmaY: 6.0,
            ),
            child: Container(
              color: AppTheme.grey.withOpacity(0.7),
              width: double.infinity,
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'NEJBLIŽŠÍ TURNAJ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      letterSpacing: 1,
                      color: AppTheme.grey30,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'TURNAJ 22',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'So 07. 07. 2022 v 19:00',
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
                  ),
                  AppButton(
                    title: "Více informací o turnaji",
                    onPressed: () => {},
                    color: Colors.yellow,
                  )
                ],
              ),
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                DateCountdown(duration: Duration(days: 4, hours: 5, minutes: 20, seconds: 16)),
                SizedBox(height: 10),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text('Koupit ZZP'),
                      onPressed: () => {},
                      style: AppTheme.blackElevatedButton,
                    ),
                    SizedBox(width: 10),
                    OutlinedButton(
                      child: Text('Vstupenky'),
                      onPressed: () => {},
                      style: AppTheme.blackOutlinedButton,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
