import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projecthit/home.dart'; // Import the Home project file

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Align(
        alignment: Alignment.center,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('Icons/BG.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 80),
              Text(
                "TO GET STARTED",
                style: GoogleFonts.pressStart2p(
                  color: Color(0xFF9e1c20),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                "Top users you should know",
                textAlign: TextAlign.center,
                style: GoogleFonts.pressStart2p(
                  color: Color(0xFF9e1c20),
                  fontSize: 10,
                ),
              ),
              const SizedBox(height: 40),

              // Container with Image and Text "MOST POPULAR"
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'Icons/Most Popular Icon.png',
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "MOST POPULAR",
                      style: GoogleFonts.pressStart2p(
                        color: Color(0xFF9e1c20),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Container with Image and User Information
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'Icons/user.png', // Provide the path to your image
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(width: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sample username',
                              style: GoogleFonts.pressStart2p(
                                color: Color(0xFF9e1c20),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              'Streamer',
                              style: GoogleFonts.pressStart2p(
                                color: Color(0xFF9e1c20),
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '2M Followers',
                              style: GoogleFonts.pressStart2p(
                                color: Color(0xFF9e1c20),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Container with Image and User Information
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'Icons/user.png', // Provide the path to your image
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(width: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sample username',
                              style: GoogleFonts.pressStart2p(
                                color: Color(0xFF9e1c20),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              'Streamer',
                              style: GoogleFonts.pressStart2p(
                                color: Color(0xFF9e1c20),
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '2M Followers',
                              style: GoogleFonts.pressStart2p(
                                color: Color(0xFF9e1c20),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Container with Image and Text "SHOWBIZ"
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'Icons/Community ico_active.png',
                      height: 50,
                      width: 50,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "SHOWBIZ",
                      style: GoogleFonts.pressStart2p(
                        color: Color(0xFF9e1c20),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Container with Image and User Information
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'Icons/user.png', // Provide the path to your image
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(width: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sample username',
                              style: GoogleFonts.pressStart2p(
                                color: Color(0xFF9e1c20),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              'Streamer',
                              style: GoogleFonts.pressStart2p(
                                color: Color(0xFF9e1c20),
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '2M Followers',
                              style: GoogleFonts.pressStart2p(
                                color: Color(0xFF9e1c20),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ],
                ),
              ),const SizedBox(height: 20),

              // Container with Image and User Information
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'Icons/user.png', // Provide the path to your image
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(width: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sample username',
                              style: GoogleFonts.pressStart2p(
                                color: Color(0xFF9e1c20),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              'Streamer',
                              style: GoogleFonts.pressStart2p(
                                color: Color(0xFF9e1c20),
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '2M Followers',
                              style: GoogleFonts.pressStart2p(
                                color: Color(0xFF9e1c20),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),


              // Clickable Image
              GestureDetector(
                onTap: () {
                  // Navigate to the Home project
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                child: Image.asset(
                  'Icons/Next_active.png', // Change to the path of your clickable image
                  height: 40,
                  width: 300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
