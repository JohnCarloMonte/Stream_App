import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projecthit/AGE.dart';
import 'package:projecthit/home.dart';
import 'package:projecthit/Loading.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_launcher_icons/main.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Hit!';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: SplashScreen(), // Use SplashScreen as the initial route
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Wait for 2 seconds and then navigate to the main screen
    Timer(
      Duration(seconds: 4),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Use your Loading class as the splash screen
    return Loading();
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('Icons/BG.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: const MyStatefulWidget(),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  List<bool> isImageClicked = [false, true];

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  bool isSignUpSelected = false;

  String? selectedAreaCode = '+63';
  List<String> areaCodes = ['+63', '+1', '+2'];



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'Icons/Hit_Logo.png',
                width: 100,
                height: 100,
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      _handleImageTap(0);
                    },
                    child: _buildImageButton(
                      'Icons/SignUp_Active.png',
                      'Icons/SignUp_inactive.png',
                      isImageClicked[0],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _handleImageTap(1);
                    },
                    child: _buildImageButton(
                      'Icons/Log-In_Active.png',
                      'Icons/Log-In_inactive.png',
                      isImageClicked[1],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (!isSignUpSelected)
                      _buildLoginFields(),

                    if (isSignUpSelected)
                      _buildSignUpFields(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to handle image tap
  void _handleImageTap(int index) {
    setState(() {
      for (int i = 0; i < isImageClicked.length; i++) {
        isImageClicked[i] = (i == index);
      }
      isSignUpSelected = (index == 0); // Assuming SignUp is at index 0
    });
  }

  // Function to build image button
  Widget _buildImageButton(String activeImage, String inactiveImage, bool isActive) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Image.asset(
        isActive ? activeImage : inactiveImage,
        width: 100,
        height: 30,
      ),
    );
  }

  // Function to build login fields
  Widget _buildLoginFields() {

    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
            width: 300,
            child: _buildTextField(
              'User Name',
              nameController,
               // Apply Google Fonts style
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 50,
            width: 300,
            child: _buildTextField('Password', passwordController, obscureText: true),
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
            },
            child: Container(
              height: 40,
              width: 300,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Icons/Log-In_Active.png'), // Replace with the actual path to your image
                  fit: BoxFit.contain, // Adjust the BoxFit property based on your design needs
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }


  // Function to build sign-up fields
  Widget _buildSignUpFields() {
    return Column(
      children: [
        const SizedBox(height: 10),
        SizedBox(
          height: 50,
          width: 500,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  bottom: 0,
                  child: DropdownButton<String>(
                    value: selectedAreaCode,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedAreaCode = newValue;
                      });
                    },
                    items: areaCodes.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                Positioned(
                  left: 50,
                  right: 0,
                  top: 0,
                  bottom: 0,

                  child: _buildTextField('Phone Number', phoneNumberController, keyboardType: TextInputType.number),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  // Handle sign-up action
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Age()));
                },
                child: Container(
                  height: 40,
                  child: Image.asset(
                    'Icons/SignUp_Active.png', // Replace with the actual path to your image
                    fit: BoxFit.contain, // Preserve the image's aspect ratio
                  ),
                ),
              ),
            ),
          ],
        ),


        SizedBox(height: 100),
        InkWell(
          onTap: () {
            // Handle Facebook button action
          },
          child: Container(


            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'Icons/Continue-FB-Icon_Active.png', // Replace with the actual path to your image asset
                  height: 40, // Adjust the height as needed
                  width: 250, // Adjust the width as needed

                ),

              ],
            ),
          ),
        ),

        InkWell(
          onTap: () {
            // Handle Facebook button action
          },
          child: Container(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'Icons/Google_Active.png', // Replace with the actual path to your image asset
                  height: 40, // Adjust the height as needed
                  width: 250, // Adjust the width as needed

                ),

              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'By signing up, you agree to our',
          style: GoogleFonts.pressStart2p(
            color: Colors.black, // Set the text color
            fontSize: 9.0, // Set the font size
             // Set the font style to italic
            // Add more font properties as needed
          ),
        ),
        TextButton(
          onPressed: () {
            // Handle "Terms and Conditions" button action
          },
          child: Text(
            'Terms and Conditions',
            style: GoogleFonts.pressStart2p(fontWeight: FontWeight.bold, color: Color(0xFF9e1c20), fontSize: 10.0),
          ),
        ),
      ],
    );
  }

  // Function to build text field
  Widget _buildTextField(String labelText, TextEditingController controller,
      {bool obscureText = false, TextInputType? keyboardType}) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 1, 10, 0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFF9e1c20),
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: labelText,
        ),
        keyboardType: keyboardType,
        inputFormatters: <TextInputFormatter>[
          if (keyboardType == TextInputType.number)
            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')), // Allow only digits (0-9)
        ],
      ),
    );
  }
}
