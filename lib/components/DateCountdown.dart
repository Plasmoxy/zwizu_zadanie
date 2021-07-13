import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DateCountdown extends StatelessWidget {
  final Duration duration;

  const DateCountdown({
    Key? key,
    required this.duration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final numbersStyle = TextStyle(
      color: Theme.of(context).backgroundColor,
      fontSize: 22,
      fontWeight: FontWeight.bold,
    );

    final unitStyle = TextStyle(
      color: Colors.grey[700],
      fontSize: 15,
      fontWeight: FontWeight.w600,
    );

    final days = duration.inDays;
    final hours = duration.inHours.remainder(24);
    final minutes = duration.inMinutes.remainder(60);
    final seconds = duration.inSeconds.remainder(60);

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // days
          Text(
            days.toString().padLeft(2, "0"),
            style: numbersStyle,
          ),
          SizedBox(width: 4),
          Padding(
            padding: EdgeInsets.only(bottom: 2),
            child: Text(AppLocalizations.of(context)!.days, style: unitStyle),
          ),
          SizedBox(width: 10),

          // hours
          Text(
            hours.toString().padLeft(2, "0"),
            style: numbersStyle,
          ),
          SizedBox(width: 4),
          Padding(
            padding: EdgeInsets.only(bottom: 2),
            child: Text(AppLocalizations.of(context)!.hours, style: unitStyle),
          ),
          SizedBox(width: 10),

          // minutes
          Text(
            minutes.toString().padLeft(2, "0"),
            style: numbersStyle,
          ),
          SizedBox(width: 4),
          Padding(
            padding: EdgeInsets.only(bottom: 2),
            child: Text(AppLocalizations.of(context)!.mins, style: unitStyle),
          ),
          SizedBox(width: 10),

          // seconds
          Text(
            seconds.toString().padLeft(2, "0"),
            style: numbersStyle,
          ),
          SizedBox(width: 4),
          Padding(
            padding: EdgeInsets.only(bottom: 2),
            child: Text(AppLocalizations.of(context)!.secs, style: unitStyle),
          ),
        ],
      ),
    );
  }
}
