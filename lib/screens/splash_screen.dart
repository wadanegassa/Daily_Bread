import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed( Duration(seconds:5), () {
      Navigator.pushReplacementNamed(context, '/onboarding');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppColors.splashGradient),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(20),
                child: const Icon(Icons.menu_book, color: Colors.brown, size: 80),
              ),
              const SizedBox(height: 20),
              Text("Daily Bread", style: AppTextStyles.splashTitle),
              const SizedBox(height: 8),
              Text("Your daily word of life", style: AppTextStyles.splashSubtitle),
            ],
          ),
        ),
      ),
    );
  }
}
