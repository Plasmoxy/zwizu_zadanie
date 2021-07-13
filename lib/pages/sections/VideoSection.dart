import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/components/VideoSingleElement.dart';
import 'package:zwizu_zadanie/mock/MockModels.dart';
import 'package:zwizu_zadanie/pages/EmptyPage.dart';
import 'package:zwizu_zadanie/pages/VideoPlayerPage.dart';
import 'package:zwizu_zadanie/pages/sections/SectionHeader.dart';
import 'package:zwizu_zadanie/util/utilities.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class VideoSection extends StatelessWidget {
  const VideoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SectionHeader(
            title: AppLocalizations.of(context)!.currently_popular,
            onMorePressed: () => Utilities.pushMaterialRoute(context, EmptyPage()),
          ),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => VideoSingleElement(
                videoEntry: MockModels.MOCK_VIDEO_ENTRIES[index],
                onPressed: () => Utilities.pushMaterialRoute(context, VideoPlayerPage()),
              ),
              itemCount: MockModels.MOCK_VIDEO_ENTRIES.length,
              padding: EdgeInsets.only(left: 7),
            ),
          ),
        ],
      ),
    );
  }
}
