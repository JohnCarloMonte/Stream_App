import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Leaderboards extends StatefulWidget {
  const Leaderboards({Key? key}) : super(key: key);

  @override
  _LeaderboardsState createState() => _LeaderboardsState();
}

class _LeaderboardsState extends State<Leaderboards> {
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
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Add the Leaderboards Text
                Text(
                  "Leaderboards",
                  style: GoogleFonts.pressStart2p(
                    color: Color(0xFF9e1c20),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 50),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start, // Align items to the left
                    children: [
                      // Sample Photo with 8-bit box design (smaller)
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey, // You can replace this with an actual image
                        ),
                      ),
                      SizedBox(width: 10), // Add spacing between photo and details
                      // User Details
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                        children: [
                          Text(
                            "Another User",
                            style: GoogleFonts.pressStart2p(
                              color: Color(0xFF9e1c20),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "2.3M Followers",
                            style: GoogleFonts.pressStart2p(
                              color: Color(0xFF9e1c20),
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 3),
                          Text(
                            "Developer",
                            style: GoogleFonts.pressStart2p(
                              color: Color(0xFF9e1c20),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start, // Align items to the left
                    children: [
                      // Sample Photo with 8-bit box design (smaller)
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey, // You can replace this with an actual image
                        ),
                      ),
                      SizedBox(width: 10), // Add spacing between photo and details
                      // User Details
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                        children: [
                          Text(
                            "Another User",
                            style: GoogleFonts.pressStart2p(
                              color: Color(0xFF9e1c20),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "2.3M Followers",
                            style: GoogleFonts.pressStart2p(
                              color: Color(0xFF9e1c20),
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 3),
                          Text(
                            "Developer",
                            style: GoogleFonts.pressStart2p(
                              color: Color(0xFF9e1c20),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start, // Align items to the left
                    children: [
                      // Sample Photo with 8-bit box design (smaller)
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey, // You can replace this with an actual image
                        ),
                      ),
                      SizedBox(width: 10), // Add spacing between photo and details
                      // User Details
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                        children: [
                          Text(
                            "Another User",
                            style: GoogleFonts.pressStart2p(
                              color: Color(0xFF9e1c20),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "2.3M Followers",
                            style: GoogleFonts.pressStart2p(
                              color: Color(0xFF9e1c20),
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 3),
                          Text(
                            "Developer",
                            style: GoogleFonts.pressStart2p(
                              color: Color(0xFF9e1c20),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start, // Align items to the left
                    children: [
                      // Sample Photo with 8-bit box design (smaller)
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey, // You can replace this with an actual image
                        ),
                      ),
                      SizedBox(width: 10), // Add spacing between photo and details
                      // User Details
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                        children: [
                          Text(
                            "Another User",
                            style: GoogleFonts.pressStart2p(
                              color: Color(0xFF9e1c20),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "2.3M Followers",
                            style: GoogleFonts.pressStart2p(
                              color: Color(0xFF9e1c20),
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 3),
                          Text(
                            "Developer",
                            style: GoogleFonts.pressStart2p(
                              color: Color(0xFF9e1c20),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // User Containers

                // ... (Your existing user containers code)

                // Additional Container with Two Rows

              ],
            ),
          ),
        ),
      ),
    );
  }
}
