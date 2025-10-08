import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const TextStyle title = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w700,
    color: AppColors.deepPurple,
  );

  static const TextStyle subtitle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.lightViolet,
  );

  static const TextStyle button = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static const TextStyle splashTitle = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.bold,
    color: Color(0xFF5E341B),
  );

  static const TextStyle splashSubtitle = TextStyle(
    fontSize: 16,
    color: Color(0xFF7A5230),
  );
}
