import 'dart:async';

import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:nyasajob_app/screens/sign_up_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentIndex = 0;
  List<String> imagePaths = [
    'assets/images/splash1.png',
    'assets/images/splash2.png',
    'assets/images/splash3.png',
  ];

  List<String> imageTexts = [
    'Welcome to MyApp 1',
    'Welcome to MyApp 2',
    'Welcome to MyApp 3',
  ];

  @override
  void initState() {
    super.initState();

    // Set up a timer to change the image every 3 seconds
    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      setState(() {
        currentIndex = (currentIndex + 1) % imagePaths.length;
      });
    });

    // Navigate to the next screen after 9 seconds (3 seconds per image)
    Timer(const Duration(seconds: 12), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SignUpScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            imagePaths[currentIndex],
            fit: BoxFit.cover,
            height: 572,
            // width: 393,

            width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height,
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  imageTexts[currentIndex],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                DotsIndicator(
                  dotsCount: imagePaths.length,
                  position: currentIndex.toDouble(),
                  decorator: const DotsDecorator(
                    color: Colors.white,
                    activeColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
