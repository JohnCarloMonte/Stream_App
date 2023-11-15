import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'Icons/Search Icon.png', // Replace with the actual path to your first image
              width: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'Icons/Message icon Active.png', // Replace with the actual path to your second image
              width: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'Icons/Bell Icon.png', // Replace with the actual path to your third image
              width: 20,
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'Icons/user.png', // Replace with the actual path to your left image
            width: 20,
          ),
        ),
        title: Text(
          'HIT',
          style: TextStyle(
            color: Color(0xFF9e1c20),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(2.0),
          child: Container(
            color: Color(0xFF9e1c20),
            height: 2.0,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Horizontal scrollable row of 6 images
              Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 5),
                    Image.asset(
                      'Icons/Filter Ico_active.png',
                      width: 50,
                      height: 40,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(width: 5),
                    Image.asset(
                      'Icons/Followed Ico_active.png', // Replace with the actual path to your image
                      width: 100,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(width: 5),
                    Image.asset(
                      'Icons/All Ico_active.png', // Replace with the actual path to your image
                      width: 60,
                      height: 60,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(width: 5),
                    Image.asset(
                      'Icons/Noobs Ico_active.png', // Replace with the actual path to your image
                      width: 100,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(width: 5),
                    Image.asset(
                      'Icons/Solo Ico_active.png', // Replace with the actual path to your image
                      width: 80,
                      height: 80,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(width: 5),
                    Image.asset(
                      'Icons/Co-host Ico_active.png', // Replace with the actual path to your image
                      width: 100,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
              // Video Thumbnails with User Sections
              SizedBox(height: 16),
              ThumbnailGrid(),
            ],
          ),
        ),
      ),
    );
  }
}

class ThumbnailWidget extends StatelessWidget {
  final String testTitle;
  final String testUser;

  ThumbnailWidget(this.testTitle, this.testUser);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                color: Colors.black,
                height: 200,
                width: 320,
                // Your thumbnail content here
              ),
            ],
          ),
          SizedBox(height: 5),
          // User Section
          Row(
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.blue,
              ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    testTitle,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    testUser,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
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


class ThumbnailGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Determine the number of columns based on screen width
    double screenWidth = MediaQuery.of(context).size.width;
    int columns = (screenWidth > 950)
        ? 3
        : (screenWidth > 800)
        ? 2
        : 1; // Adjust the breakpoints as needed

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < 10; i += columns)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int j = 0; j < columns; j++)
                  if (i + j < 10) // Ensure you don't exceed the number of thumbnails
                    Padding(
                      padding: EdgeInsets.only(right: (j == columns - 1) ? 0 : 16),
                      child: ThumbnailWidget(
                        'Test Title ${i + j + 1}',
                        'Test User ${i + j + 1}',
                      ),
                    ),
              ],
            ),
        ],
      ),
    );
  }
}