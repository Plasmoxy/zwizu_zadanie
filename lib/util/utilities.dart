import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// Utility class
class Utilities {
  /// Push a new Widget in a MaterialPageRoute onto Navigator
  static void pushMaterialRoute(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (routeContext) => page,
      ),
    );
  }

  // format date in czech/slovak format
  static DateFormat czskDateFormatString(BuildContext context) {
    return DateFormat("EE dd. MM. yyyy 'v' HH:mm", Localizations.localeOf(context).languageCode);
  }
}

/// String extension methods
extension StringExtension on String {
  /// Capitalize given string
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}
