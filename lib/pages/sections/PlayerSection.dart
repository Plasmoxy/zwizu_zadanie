import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/pages/sections/SectionHeader.dart';

class PlayerSection extends StatelessWidget {
  const PlayerSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SectionHeader(title: "Hráči"),
        ],
      ),
    );
  }
}
