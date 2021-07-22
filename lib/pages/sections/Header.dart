import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/AppTheme.dart';
import 'package:zwizu_zadanie/components/AppButton.dart';
import 'package:zwizu_zadanie/components/DateCountdown.dart';
import 'package:zwizu_zadanie/models/Tournament.dart';
import 'package:zwizu_zadanie/pages/EmptyPage.dart';
import 'package:zwizu_zadanie/util/utilities.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Header card with localized information about [tournament].
class Header extends StatefulWidget {
  final Tournament tournament;

  const Header({
    Key? key,
    required this.tournament,
  }) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  late Timer _refreshTimer;
  Duration _countdownDuration = Duration.zero;

  Future<Duration> calcDiff() async {
    return widget.tournament.date.difference(DateTime.now().toLocal());
  }

  @override
  void initState() {
    // start the refresh timer of date countdown
    _refreshTimer = Timer.periodic(Duration(seconds: 1), (timer) async {
      if (mounted) {
        final newDur = await calcDiff();
        setState(() {
          _countdownDuration = newDur;
        });
      }
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
            filter: AppTheme.blurFilter,
            child: Container(
              color: AppTheme.grey.withOpacity(0.7),
              width: double.infinity,
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    AppLocalizations.of(context)!.closest_tournament.toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      letterSpacing: 1,
                      color: AppTheme.grey30,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    widget.tournament.name.toUpperCase(),
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(height: 5),
                  Text(
                    Utilities.czskDateFormatString(context).format(widget.tournament.date).capitalize(),
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
                  ),
                  AppButton(
                    title: AppLocalizations.of(context)!.more_info,
                    onPressed: () => Utilities.pushMaterialRoute(context, EmptyPage()),
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
                      child: Text(AppLocalizations.of(context)!.buyZZP),
                      onPressed: () => Utilities.pushMaterialRoute(context, EmptyPage()),
                      style: AppTheme.blackElevatedButton,
                    ),
                    SizedBox(width: 10),
                    OutlinedButton(
                      child: Text(AppLocalizations.of(context)!.tickets),
                      onPressed: () => Utilities.pushMaterialRoute(context, EmptyPage()),
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
