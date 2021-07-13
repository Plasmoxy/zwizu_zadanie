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
}
