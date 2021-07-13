import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/components/VideoSingleElement.dart';
import 'package:zwizu_zadanie/pages/sections/SectionHeader.dart';

class VideoSection extends StatelessWidget {
  const VideoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SectionHeader(title: "Právě letí"),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => VideoSingleElement(onPressed: () => {}),
              itemCount: 3,
              padding: EdgeInsets.only(left: 7),
            ),
          ),
        ],
      ),
    );
  }
}
