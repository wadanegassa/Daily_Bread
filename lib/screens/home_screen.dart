import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.softCream,
      body: Center(
        child: Text(
          'Welcome to Daily Bread!',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
