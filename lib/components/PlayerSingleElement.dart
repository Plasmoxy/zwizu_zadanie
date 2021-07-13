import 'package:flutter/material.dart';
import 'package:zwizu_zadanie/AppTheme.dart';

class PlayerSingleElement extends StatelessWidget {
  final void Function()? onPressed;

  const PlayerSingleElement({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: 140,
        margin: EdgeInsets.symmetric(horizontal: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // image
            Card(
              child: Image.asset(
                "assets/player.jpg",
                width: double.infinity, // adapt to container width
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 4),
            // name of the player
            Text(
              "John Doe",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              softWrap: true,
            ),
            SizedBox(height: 4),
            // player label
            Text(
              "Champion".toUpperCase(),
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: AppTheme.grey50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
