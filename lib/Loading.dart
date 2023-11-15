import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // Add your loading image and background image paths
  String loadingImagePath = 'Icons/Now Streaming Icon.png';
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                loadingImagePath,
                width: 200, // Adjust the width as needed
                height: 200, // Adjust the height as needed
              ),
              SizedBox(height: 20),
              CircularProgressIndicator(), // You can customize this loading indicator
            ],
          ),
        ),
      ),
    );
  }
}
