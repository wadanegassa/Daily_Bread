import 'package:daily_bread/home/action_button.dart';
import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_text_styles.dart';
import 'verse_card.dart';
import 'next_verse_button.dart';
import 'bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppColors.onboardingGradient,
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Title & Subtitle
                Text('Daily Bread', style: AppTextStyles.title),
                const SizedBox(height: 6),
                Text('VERSE OF THE DAY', style: AppTextStyles.subtitle),
                const SizedBox(height: 30),

                // Verse Card
                const VerseCard(),

                const SizedBox(height: 40),

                // Action Buttons (Favorite, Write, Share)
                const ActionButtons(),

                const Spacer(),

                // Next Verse Button
                const NextVerseButton(),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
