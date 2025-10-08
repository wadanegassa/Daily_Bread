import 'package:daily_bread/widget/onboarding_content.dart';
import 'package:flutter/material.dart';
import 'onboarding3.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingContent(
      imagePath: 'assets/images/writing_notes.jpg',
      title: 'Reflect & Grow Spiritually',
      description: 'Write your thoughts and strengthen your faith.',
      buttonText: 'Next',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Onboarding3()),
        );
      },
    );
  }
}
