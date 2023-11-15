import 'package:flutter/material.dart';

class Followers extends StatefulWidget {
  const Followers({Key? key}) : super(key: key);

  @override
  _FollowersState createState() => _FollowersState();
}

class _FollowersState extends State<Followers> {
  // Add your background image path
  String backgroundImage = 'Icons/BG.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20), // Add horizontal padding
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.mic,
                  size: 120, // Adjust the size as needed
                  color: Color(0xFF9e1c20), // Icon color
                ),
                const SizedBox(height: 20), // Add spacing
                Text(
                  "You have not subscribed to any streamers yet",
                  textAlign: TextAlign.center, // Center-align the text horizontally
                  style: TextStyle(
                    color: Color(0xFF9e1c20), // Text color
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
