import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/apptheme.dart';
import 'package:zwizu_zadanie/components/AppButton.dart';
import 'package:zwizu_zadanie/components/DateCountdown.dart';

class Header extends StatefulWidget {
  final DateTime targetDate;

  const Header({
    Key? key,
    required this.targetDate,
  }) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  late Timer _refreshTimer;
  Duration _countdownDuration = Duration.zero;

  @override
  void initState() {
    // start the refresh timer of date countdown
    _refreshTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (mounted)
        setState(() {
          _countdownDuration = widget.targetDate.difference(DateTime.now());
        });
    });
    super.initState();
  }

  @override
  void dispose() {
    _refreshTimer.cancel();
    super.dispose();
  }

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
                DateCountdown(duration: _countdownDuration),
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
