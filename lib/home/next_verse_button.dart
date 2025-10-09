import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_text_styles.dart';

class NextVerseButton extends StatelessWidget {
  const NextVerseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.buttonViolet,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14),
          elevation: 4,
          shadowColor: AppColors.buttonViolet.withOpacity(0.3),
        ),
        child: Text("Next Verse", style: AppTextStyles.button),
      ),
    );
  }
}
