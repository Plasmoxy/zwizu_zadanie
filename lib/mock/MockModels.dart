import 'package:zwizu_zadanie/models/Tournament.dart';
import 'package:zwizu_zadanie/models/VideoEntry.dart';

class MockModels {
  static final MOCK_TOURNAMENT = Tournament(
    name: "Turnaj 22",
    date: DateTime(2022, 09, 07, 19),
  );

  static final MOCK_VIDEO_ENTRIES = <VideoEntry>[
    VideoEntry(
      name: "Souboj o trůn",
      category: "TURNAJ 20",
      isPremium: true,
    ),
  ];
}
