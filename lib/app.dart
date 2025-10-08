import 'package:daily_bread/screens/onboarding1.dart';
import 'package:daily_bread/screens/onboarding2.dart';
import 'package:daily_bread/screens/onboarding3.dart';
import 'package:daily_bread/screens/splash.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Bread',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto', // you can change this to match your UI font
        primaryColor: const Color(0xFF5C4B99),
        useMaterial3: true,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF5C4B99),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
          ),
        ),
      ),
     routes: {
    '/': (context) => const SplashScreen(),
    '/onboarding1': (context) => const Onboarding1(),
    '/onboarding2': (context) => const Onboarding2(),
    '/onboarding3': (context) => const Onboarding3(),
  },
    );
  }
}
