import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/apptheme.dart';
import 'package:zwizu_zadanie/components/AppButton.dart';

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline2,
          ),
          Spacer(),
          AppButton(
            onPressed: () => {},
            color: AppTheme.yellow,
            title: "Více",
          ),
        ],
      ),
    );
  }
}
