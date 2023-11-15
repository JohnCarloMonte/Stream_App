import 'package:flutter/material.dart';
import 'package:projecthit/TO_GET_STARTED.dart';
import 'package:google_fonts/google_fonts.dart';


class Gender extends StatefulWidget {
  const Gender({Key? key}) : super(key: key);

  @override
  _GendersState createState() => _GendersState();
}

class _GendersState extends State<Gender> {
  List<bool> isImageClicked = [false, false, false];
  bool isNextButtonClickable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('Icons/BG.png'), // Change the path accordingly
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 60),
              Text(
                "GENDER",
                textAlign: TextAlign.center,
                style: GoogleFonts.pressStart2p(
                  color: Color(0xFF9e1c20),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "This helps us find more relevant livestreams for you",
                textAlign: TextAlign.center,
                style: GoogleFonts.pressStart2p(
                  color: Color(0xFF9e1c20),
                  fontSize: 10,
                ),
              ),
              const SizedBox(height: 20),

              // Two Images in Column
              Column(
                children: [
                  SizedBox(height: 20),
                  buildClickableImage(
                    'Icons/Male_inactive.png',
                    'Icons/Male_active.png',
                    40,
                    300,
                    0,
                  ),
                  SizedBox(height: 20),
                  buildClickableImage(
                    'Icons/Female_inactive.png',
                    'Icons/Female_active.png',
                    40,
                    300,
                    1,
                  ),
                ],
              ),

              // Third Clickable Image (Next Button)
              SizedBox(height: 250),
              GestureDetector(
                onTap: isNextButtonClickable
                    ? () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Start()),
                  );
                }
                    : null,
                child: Image.asset(
                  'Icons/Next_active.png',
                  height: 40,
                  width: 300,
                ),
              ),

              // No Buttons
              const SizedBox(height: 22),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildClickableImage(
      String imagePath,
      String clickedImagePath,
      double height,
      double width,
      int index,
      ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isImageClicked[index] = !isImageClicked[index];
          isNextButtonClickable = isImageClicked.any((clicked) => clicked);
        });
      },
      child: Image.asset(
        isImageClicked[index] ? clickedImagePath : imagePath,
        height: height,
        width: width,
      ),
    );
  }
}
