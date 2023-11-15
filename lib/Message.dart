import 'package:flutter/material.dart';

class MessengerUI extends StatefulWidget {
  const MessengerUI({Key? key}) : super(key: key);

  @override
  _MessengerUIState createState() => _MessengerUIState();
}

class _MessengerUIState extends State<MessengerUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF9e1c20), // Set the theme color
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('path_to_profile_image.png'),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "User",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "0 followers",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "BM Community",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  onTap: () {
                    // Handle the Chat button press
                  },
                  leading: Icon(Icons.chat, color: Color(0xFF9e1c20)),
                  title: Text("Chat"),
                ),
                ListTile(
                  onTap: () {
                    // Handle the Calls button press
                  },
                  leading: Icon(Icons.phone, color: Color(0xFF9e1c20)),
                  title: Text("Calls"),
                ),
                ListTile(
                  onTap: () {
                    // Handle the People button press
                  },
                  leading: Icon(Icons.people, color: Color(0xFF9e1c20)),
                  title: Text("People"),
                ),
                // Add more list items as needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}
