import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zwizu_zadanie/AppTheme.dart';
import 'package:zwizu_zadanie/models/VideoEntry.dart';

class VideoSingleElement extends StatelessWidget {
  final void Function() onPressed;
  final VideoEntry videoEntry;

  const VideoSingleElement({
    Key? key,
    required this.videoEntry,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: 230,
        margin: EdgeInsets.symmetric(horizontal: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // video image with play button and premium banner
            Card(
              margin: EdgeInsets.zero,
              child: Stack(
                children: [
                  // image of video
                  if (videoEntry.imageUrl == null)
                    Image.asset(
                      "assets/tournament.jpg",
                      width: double.infinity, // adapt to container width
                      height: 130,
                      fit: BoxFit.cover,
                    )
                  else
                    Image.network(
                      videoEntry.imageUrl!,
                      width: double.infinity, // adapt to container width
                      height: 130,
                      fit: BoxFit.cover,
                    ),

                  // play circle
                  Positioned.fill(
                    child: Center(
                      child: ClipOval(
                        child: BackdropFilter(
                          filter: AppTheme.blurFilter,
                          child: Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: AppTheme.black.withOpacity(0.5),
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 1,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  // play icon
                  Positioned.fill(
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.only(left: 5),
                        child: FaIcon(FontAwesomeIcons.play),
                      ),
                    ),
                  ),

                  // premium label
                  if (videoEntry.isPremium)
                    Positioned(
                      top: 3,
                      right: 3,
                      child: Card(
                        color: AppTheme.black.withOpacity(0.5),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                        child: Padding(
                          padding: EdgeInsets.all(3),
                          child: Text(
                            'Premium',
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(height: 10),
            // category
            Text(
              videoEntry.category.toUpperCase(),
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: AppTheme.grey50,
              ),
            ),
            SizedBox(height: 4),
            // video title
            Text(
              videoEntry.name,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
              softWrap: true,
            ),
          ],
        ),
      ),
    );
  }
}
