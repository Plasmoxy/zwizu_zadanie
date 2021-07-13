import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/components/BottomFaded.dart';
import 'package:zwizu_zadanie/components/Header.dart';
import 'package:zwizu_zadanie/util/ipsum.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff161616),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              BottomFaded(
                child: Image.asset(
                  "assets/tournament.jpg",
                  height: 500,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    const SizedBox(height: 255),
                    Header(),
                  ],
                ),
              ),
              // image
            ],
          ),
        ),
      ),
    );
  }
}
