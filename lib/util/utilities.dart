import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Utilities {
  static void pushMaterialRoute(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (routeContext) => page,
      ),
    );
  }

  static DateFormat czskDateFormatString(BuildContext context) {
    return DateFormat("EE dd. MM. yyyy 'v' HH:mm", Localizations.localeOf(context).languageCode);
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}
