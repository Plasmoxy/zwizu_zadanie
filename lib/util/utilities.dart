import 'package:flutter/material.dart';

void pushMaterialRoute(BuildContext context, Widget page) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (routeContext) => page,
    ),
  );
}
