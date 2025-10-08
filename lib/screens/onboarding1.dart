import 'package:daily_bread/widget/onboarding_content.dart';
import 'package:flutter/material.dart';
import 'onboarding2.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingContent(
      imagePath: 'assets/images/bible_reading.jpg',
      title: 'Get Inspired Daily',
      description: 'Receive daily Bible verses and insights.',
      buttonText: 'Next',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Onboarding2()),
        );
      },
    );
  }
}
