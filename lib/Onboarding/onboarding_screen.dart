import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double buttonWidth = screenWidth - 16 * 2;
    final bool hasNotch = MediaQuery.of(context).padding.top > 24.0;

    return Scaffold(
        body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: hasNotch ? 84 : 60),
            child: SizedBox(
              width: 350 * (350 / 470),
              height: 470 * (350 / 470),
              child: Image.asset("assets/icon_Onboarding.png"),
            ),
          ),
          const SizedBox(height: 56.0),
          Container(
            padding: const EdgeInsets.only(left: 16),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome to Documents",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xFF8A89A0),
                    fontFamily: "SF Pro Text",
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  "Where all your files set to action",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color(0xFF040B32),
                      fontFamily: "SF Pro Text",
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const SizedBox(height: 48.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
                // side: const BorderSide(color: Colors.white),
              ),
              minimumSize: Size(buttonWidth, 44),
              backgroundColor: const Color(0xFF4E62E5),
              animationDuration: Duration.zero,
            ),
            onPressed: () {

            },
            child: const Text(
              "Let’s Start",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}