import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Live extends StatefulWidget {
  const Live({Key? key}) : super(key: key);

  @override
  _LiveState createState() => _LiveState();
}

class _LiveState extends State<Live> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Handle menu icon press
          },
        ),
        title: Text(
          "GO LIVE!",
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
          preferredSize: Size.fromHeight(2.0),
          child: Container(
            color: Color(0xFF9e1c20),
            height: 2.0,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              // Container for screen stream preview
              color: Colors.grey[300], // Placeholder color
              // You can add your stream preview widget here
              // For example, if you have a widget called StreamPreviewWidget:
              // child: StreamPreviewWidget(),
            ),
          ),
          SizedBox(
            height: 60.0,
            child: ElevatedButton(
              onPressed: () {
                // Action when 'Start Live!' button is pressed
              },
              child: Text('Start Live!'),
            ),
          ),
        ],
      ),
    );
  }
}
