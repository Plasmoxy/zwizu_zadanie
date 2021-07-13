import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/components/AppButton.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.transparent,
      child: Column(
        children: [
          BackdropFilter(
            filter: new ImageFilter.blur(
              sigmaX: 6.0,
              sigmaY: 6.0,
            ),
            child: Container(
              color: const Color(0xff373737).withOpacity(0.7),
              width: double.infinity,
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'NEJBLIŽŠÍ TURNAJ',
                    style: TextStyle(fontWeight: FontWeight.w300, letterSpacing: 1),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'TURNAJ 22',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'So 07. 07. 2022 v 19:00',
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
                  ),
                  AppButton(
                    title: "Více informací o turnaji",
                    onPressed: () => {},
                    color: Colors.yellow,
                  )
                ],
              ),
            ),
          ),
          Container(
            color: const Color(0xffffd302),
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  'Odpočet',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text('Koupit ZZP'),
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        onPrimary: Colors.yellow,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 23, vertical: 12),
                        textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                    ),
                    SizedBox(width: 5),
                    OutlinedButton(
                      child: Text('Vstupenky'),
                      onPressed: () => {},
                      style: OutlinedButton.styleFrom(
                        primary: Colors.black,
                        side: BorderSide(width: 2.0, color: Colors.black),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 23, vertical: 12),
                        textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
