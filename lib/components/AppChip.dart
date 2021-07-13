import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/AppTheme.dart';

/// Simple chip with grey background from [text].
class AppChip extends StatelessWidget {
  final String text;

  const AppChip({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppTheme.black.withOpacity(0.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
      child: Padding(
        padding: EdgeInsets.all(3),
        child: Text(
          text,
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
