import 'package:zwizu_zadanie/models/Player.dart';
import 'package:zwizu_zadanie/models/Tournament.dart';
import 'package:zwizu_zadanie/models/VideoEntry.dart';

/// Class with mock objects for testing
class MockModels {
  static final MOCK_TOURNAMENT = Tournament(
    name: "Turnaj 22",
    date: DateTime(2022, 09, 07, 20),
  );

  static final MOCK_VIDEO_ENTRIES = <VideoEntry>[
    VideoEntry(
      name: "Souboj o trůn",
      category: "TURNAJ 20",
      isPremium: true,
    ),
    VideoEntry(
      name: "V kůži bojovníků tímu FISHER",
      category: "Hattrick",
      isPremium: false,
    ),
  ];

  static final MOCK_PLAYERS = <Player>[
    Player(
      name: "Jon Doe",
      label: "Champion",
    ),
    Player(
      name: "Jack Doe",
      label: "1. místo",
    ),
    Player(
      name: "Joe Doe",
      label: "2. místo",
    ),
    Player(
      name: "Jerguš",
      label: "3. místo",
    ),
  ];
}
