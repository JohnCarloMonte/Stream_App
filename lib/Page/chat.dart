import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Set the background color to transparent
        elevation: 0, // Remove the shadow
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Handle menu icon press
          },
        ),
        title: Text(
          "Chat",
          style: GoogleFonts.pressStart2p(
            color: Color(0xFF9e1c20),
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search icon press
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(2.0), // Adjust the height as needed
          child: Container(
            color: Color(0xFF9e1c20), // Set the color for the bottom outline
            height: 2.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20.0, left: 16.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Friends",
                  style: GoogleFonts.pressStart2p(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 80.0,
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Colors.blue,
                        // You can set user images here
                      ),
                    );
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.0),
                    topRight: Radius.circular(5.0),
                  ),
                ),
                width: double.infinity,
                height: 442.0,
                child: ListView(
                  children: [
                    // Dummy message layout with outline
                    _buildMessageLayout("User 1", "This is a sample message."),
                    _buildMessageLayout(
                      "User 2",
                      "This is a very long message that will be shortened by replacing the overflowed text with ...",
                    ),
                    // Add more messages as needed
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMessageLayout(String userName, String message) {
    return GestureDetector(
      onTap: () {
        // Handle the click event, navigate to Message.dart
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.blue,
              // You can set user images here
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: GoogleFonts.pressStart2p(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    message,
                    style: GoogleFonts.pressStart2p(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
