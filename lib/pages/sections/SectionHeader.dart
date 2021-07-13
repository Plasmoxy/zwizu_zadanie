import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/AppTheme.dart';
import 'package:zwizu_zadanie/components/AppButton.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final void Function()? onMorePressed;

  const SectionHeader({
    Key? key,
    required this.title,
    this.onMorePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 13, right: 5),
      child: Row(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline2,
          ),
          Spacer(),
          AppButton(
            onPressed: onMorePressed,
            color: AppTheme.yellow,
            title: "Více",
          ),
        ],
      ),
    );
  }
}
