import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zwizu_zadanie/apptheme.dart';

class VideoSingleElement extends StatelessWidget {
  const VideoSingleElement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // image
          Card(
            child: Stack(
              children: [
                // image of video
                Image.asset(
                  "assets/tournament.jpg",
                  width: double.infinity, // adapt to container width
                  height: 130,
                  fit: BoxFit.cover,
                ),

                // play circle
                Positioned.fill(
                  child: Center(
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

                // play icon
                Positioned.fill(
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.only(left: 5),
                      child: FaIcon(FontAwesomeIcons.play),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // category
          Text(
            "TURNAJ 20".toUpperCase(),
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: AppTheme.grey50,
            ),
          ),
          // video title
          Text(
            "Souboj o truny xdxd 2 riadky mocno mocno",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
            softWrap: true,
          )
        ],
      ),
    );
  }
}
