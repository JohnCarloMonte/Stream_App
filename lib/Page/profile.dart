import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Cover photo
          Container(
            height: 200, // Adjust the height as needed
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red, Colors.black], // Gradient of red and black
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          // Profile photo
          Positioned(
            top: 130, // Position the profile photo below the cover photo
            left: (MediaQuery.of(context).size.width - 120) / 2, // Center the profile photo horizontally
            child: CircleAvatar(
              radius: 60, // Adjust the size as needed
              backgroundImage: AssetImage('path_to_profile_image.png'), // Add your profile image
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 250), // Add spacing to separate the profile photo from the text content
              Center(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20), // Add left and right padding
                      child: Row(
                        // Align the text in a row to the center
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 135), // Add left and right padding
                            child: Text(
                              "User",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24, // Increase the font size
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20), // Add left and right padding
                      child: Row(
                        // Align the text in a row to the center
                        children: <Widget>[
                          SizedBox(width: 70),
                          Padding(
                            padding: EdgeInsets.only(right: 5), // Add right padding
                            child: Text(
                              "0 followers",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10), // Add left padding
                            child: Expanded(
                              child: Text(
                                "BM Community",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10), // Add some spacing
                  ],
                ),
              ),
              SizedBox(height: 20), // Add some spacing
              Column(
                children: <Widget>[
                  // "Channel," "Privacy," "Language," and "About HiT" buttons with full width and black outline
                  Container(
                    width: double.infinity, // Full width
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black), // Black outline
                    ),
                    child: TextButton(
                      onPressed: () {
                        // Handle the Channel button press
                      },
                      child: Text("Channel", style: TextStyle(color: Colors.black)),
                    ),
                  ),
                  Container(
                    width: double.infinity, // Full width
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black), // Black outline
                    ),
                    child: TextButton(
                      onPressed: () {
                        // Handle the Privacy button press
                      },
                      child: Text("Privacy", style: TextStyle(color: Colors.black)),
                    ),
                  ),
                  Container(
                    width: double.infinity, // Full width
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black), // Black outline
                    ),
                    child: TextButton(
                      onPressed: () {
                        // Handle the Language button press
                      },
                      child: Text("Language", style: TextStyle(color: Colors.black)),
                    ),
                  ),
                  Container(
                    width: double.infinity, // Full width
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black), // Black outline
                    ),
                    child: TextButton(
                      onPressed: () {
                        // Handle the About HiT button press
                      },
                      child: Text("About HiT", style: TextStyle(color: Colors.black)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
