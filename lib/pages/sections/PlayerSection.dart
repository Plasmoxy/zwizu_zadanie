import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/components/PlayerSingleElement.dart';
import 'package:zwizu_zadanie/pages/sections/SectionHeader.dart';

class PlayerSection extends StatelessWidget {
  const PlayerSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SectionHeader(title: "Hráči"),
          SizedBox(
            height: 250,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => PlayerSingleElement(onPressed: () => {}),
              itemCount: 3,
              padding: EdgeInsets.only(left: 7),
            ),
          ),
        ],
      ),
    );
  }
}
