import 'package:flutter/material.dart';

class AppColors {
  
  static const Color deepPurple = Color(0xFF2E2270);
  static const Color lightViolet = Color(0xFF5A4F9E);
  static const Color buttonViolet = Color(0xFF5C3BFE);
  static const Color inactiveDot = Color(0xFFD0C9FF);
  static const Color softCream = Color(0xFFFFFBF2);

 
  static const LinearGradient splashGradient = LinearGradient(
    colors: [Color(0xFFFCEABB), Color(0xFFF8B500)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient onboardingGradient = LinearGradient(
    colors: [Color(0xFFF4F1FF), Color(0xFFFFFFFF)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
