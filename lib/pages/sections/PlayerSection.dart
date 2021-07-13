import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/components/PlayerSingleElement.dart';
import 'package:zwizu_zadanie/mock/MockModels.dart';
import 'package:zwizu_zadanie/pages/EmptyPage.dart';
import 'package:zwizu_zadanie/pages/sections/SectionHeader.dart';
import 'package:zwizu_zadanie/util/utilities.dart';

class PlayerSection extends StatelessWidget {
  const PlayerSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SectionHeader(
            title: "Hráči",
            onMorePressed: () => Utilities.pushMaterialRoute(context, EmptyPage()),
          ),
          SizedBox(
            height: 250,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => PlayerSingleElement(
                player: MockModels.MOCK_PLAYERS[index],
                onPressed: () => Utilities.pushMaterialRoute(context, EmptyPage()),
              ),
              itemCount: MockModels.MOCK_PLAYERS.length,
              padding: EdgeInsets.only(left: 7),
            ),
          ),
        ],
      ),
    );
  }
}
