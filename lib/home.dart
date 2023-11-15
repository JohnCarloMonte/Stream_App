import 'package:flutter/material.dart';
import 'package:projecthit/Community.dart';
import 'package:projecthit/Leaderboards.dart';
import 'package:projecthit/Page/Followers.dart';
import 'package:projecthit/Page/chat.dart';
import 'package:projecthit/Page/dashboard.dart';
import 'package:projecthit/Page/profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  final List<Widget> screens = [
    Dashboard(),
    Community(),
    Leaderboards(),
    Followers(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Dashboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      extendBody: true, // Extend the body content behind the BottomAppBar
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Adjusted alignment
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = Dashboard();
                      currentTab = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'Icons/Home ico_active.png', // Replace with the actual path to your image
                        height: 60, // Adjust the height as needed
                        width: 60, // Adjust the width as needed
                        // Optional: Apply color conditionally
                      ),
                    ],
                  ),

                ),
              ),
              Expanded(
                child: MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = Followers();
                      currentTab = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'Icons/Following ico_active.png', // Replace with the actual path to your image
                        height: 60, // Adjust the height as needed
                        width: 60, // Adjust the width as needed
                         // Optional: Apply color conditionally
                      ),
                    ],
                  ),

                ),
              ),
              // Add the image in the center
              Expanded(
                child: Image.asset(
                  'Icons/Hit_Logo.png',
                  height: 40,
                  width: 40,
                  fit: BoxFit.contain
                  ,
                ),
              ),
              Expanded(
                child: MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = Community();
                      currentTab = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'Icons/Community ico_active.png', // Replace with the actual path to your image
                        height: 60, // Adjust the height as needed
                        width: 60, // Adjust the width as needed
                         // Optional: Apply color conditionally
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = Leaderboards();
                      currentTab = 4;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'Icons/Leaderboard ico_active.png', // Replace with the actual path to your image
                        height: 60, // Adjust the height as needed
                        width: 60, // Adjust the width as needed
                         // Optional: Apply color conditionally
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
