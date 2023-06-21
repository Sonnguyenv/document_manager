import 'package:document_manager/Language/language_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LanguageScreen()),
      );
    });

    return Scaffold(
      body: Center(
        child: Image.asset("assets/icon_Splash.png",
            height: 140, width: 150),
      ),
      backgroundColor: const Color(0xFF4E62E5)
    );
  }
}