import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/components/BottomFaded.dart';
import 'package:zwizu_zadanie/mock/MockModels.dart';
import 'package:zwizu_zadanie/pages/sections/Header.dart';
import 'package:zwizu_zadanie/pages/sections/PlayerSection.dart';
import 'package:zwizu_zadanie/pages/sections/VideoSection.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              // background:
              BottomFaded(
                child: Image.asset(
                  "assets/tournament.jpg",
                  height: 500,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              // sections:
              Column(
                children: [
                  const SizedBox(height: 255),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Header(
                      tournament: MockModels.MOCK_TOURNAMENT,
                    ),
                  ),
                  const SizedBox(height: 12),
                  VideoSection(),
                  const SizedBox(height: 12),
                  PlayerSection(),
                  const SizedBox(height: 100),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
