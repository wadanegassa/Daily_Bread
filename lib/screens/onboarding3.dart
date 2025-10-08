import 'package:daily_bread/widget/onboarding_content.dart';
import 'package:flutter/material.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingContent(
      imagePath: 'assets/images/glow_light.jpg',
      title: 'Stay Connected with the Word',
      description: 'Bookmark, share, and live by Scripture.',
      buttonText: 'Get Started',
      onPressed: () {
        // TODO: Navigate to your main home page later
      },
    );
  }
}
