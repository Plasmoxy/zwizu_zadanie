import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppButton extends StatelessWidget {
  final void Function() onPressed;
  final String title;
  final Color color;
  final TextStyle? textStyle;

  const AppButton({
    Key? key,
    required this.onPressed,
    required this.title,
    required this.color,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: this.onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            this.title,
            style: textStyle ??
                TextStyle(
                  fontWeight: FontWeight.w500,
                  color: color,
                  fontSize: 17,
                ),
          ),
          SizedBox(width: 5),
          FaIcon(
            FontAwesomeIcons.chevronRight,
            size: 17,
            color: color,
          ),
        ],
      ),
    );
  }
}
