import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> _pages = [
    {
      "title": "Get Inspired Daily",
      "subtitle": "Receive daily Bible verses and insights.",
      "image": "assets/images/bible_reading.jpg",
    },
    {
      "title": "Reflect & Grow Spiritually",
      "subtitle": "Write your thoughts and strengthen your faith.",
      "image": "assets/images/writing_notes.jpg",
    },
    {
      "title": "Stay Connected with the Word",
      "subtitle": "Bookmark, share, and live by Scripture.",
      "image": "assets/images/glow_light.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppColors.onboardingGradient),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _pages.length,
                onPageChanged: (index) => setState(() => _currentPage = index),
                itemBuilder: (context, index) {
                  final page = _pages[index];
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 8,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(page["image"]!, fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(height: 60),
                        Text(page["title"]!, textAlign: TextAlign.center, style: AppTextStyles.title),
                        const SizedBox(height: 12),
                        Text(page["subtitle"]!,
                            textAlign: TextAlign.center, style: AppTextStyles.subtitle),
                      ],
                    ),
                  );
                },
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _pages.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  height: 8,
                  width: _currentPage == index ? 20 : 8,
                  decoration: BoxDecoration(
                    color: _currentPage == index
                        ? AppColors.buttonViolet
                        : AppColors.inactiveDot,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Button
            ElevatedButton(
              onPressed: () {
                if (_currentPage == _pages.length - 1) {
                  Navigator.pushReplacementNamed(context, '/home');
                } else {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.buttonViolet,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                elevation: 6,
              ),
              child: Text(
                _currentPage == _pages.length - 1 ? "Get Started" : "Next",
                style: AppTextStyles.button,
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
