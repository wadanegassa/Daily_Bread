import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_text_styles.dart';

class VerseCard extends StatelessWidget {
  const VerseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            "Wednesday, October 8",
            style: AppTextStyles.subtitle.copyWith(fontSize: 14),
          ),
          const SizedBox(height: 10),
          const Icon(Icons.format_quote_rounded,
              color: AppColors.buttonViolet, size: 30),
          const SizedBox(height: 12),
          Text(
            "The Lord is my shepherd; I shall not want.",
            style: AppTextStyles.title.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppColors.deepPurple,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            "— Psalm 23:1",
            style: AppTextStyles.subtitle.copyWith(
              color: AppColors.lightViolet,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
