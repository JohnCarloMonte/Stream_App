import 'package:flutter/material.dart';
import 'package:projecthit/GENDER.dart';
import 'package:google_fonts/google_fonts.dart';

class Age extends StatefulWidget {
  const Age({Key? key}) : super(key: key);

  @override
  _AgesState createState() => _AgesState();
}

class _AgesState extends State<Age> {
  List<bool> isImageClicked = List.generate(4, (index) => false);
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
              SizedBox(height: 90),
              Text(
                "AGE BRACKET",
                textAlign: TextAlign.center,
                style: GoogleFonts.pressStart2p(
                  color: Color(0xFF9e1c20),
                  fontSize: 17,
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

              // Three images above the "NEXT" image
              Column(
                children: [
                  buildClickableImage(
                    'Icons/firstbuttoninctive.png',
                    0,
                    'Icons/firstbutton.png',
                  ),
                  const SizedBox(height: 20),
                  buildClickableImage(
                    'Icons/Age18-28i.png',
                    1,
                    'Icons/Age18-28.png',
                  ),
                  const SizedBox(height: 20),
                  buildClickableImage(
                    'Icons/Age29-38i.png',
                    2,
                    'Icons/Age29-38.png',
                  ),
                  const SizedBox(height: 20),
                  buildClickableImage(
                    'Icons/Age39-ai.png',
                    3,
                    'Icons/Age39-a.png',
                  ),
                  const SizedBox(height: 20),
                ],
              ),
              // Image above the "NEXT" image
              const SizedBox(height: 150),

              // Next Image
              GestureDetector(
                onTap: isNextButtonClickable
                    ? () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Gender()),
                  );
                }
                    : null, // Set to null if not clickable
                child: Image.asset(
                  'Icons/Next_active.png',
                  width: double.infinity,
                  height: 40,
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildClickableImage(
      String imagePath, int index, String clickedImagePath) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isImageClicked[index] = true;
          isNextButtonClickable =
              isImageClicked.any((clicked) => clicked); // Check if any image is clicked
        });
      },
      child: Image.asset(
        isImageClicked[index] ? clickedImagePath : imagePath,
        width: double.infinity,
        height: 40,
      ),
    );
  }
}
