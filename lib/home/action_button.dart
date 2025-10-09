import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        _CircleIconButton(icon: Icons.bookmark_border),
        SizedBox(width: 20),
        _CircleIconButton(icon: Icons.edit_outlined),
        SizedBox(width: 20),
        _CircleIconButton(icon: Icons.share_outlined),
      ],
    );
  }
}

class _CircleIconButton extends StatelessWidget {
  final IconData icon;
  const _CircleIconButton({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(14),
      child: Icon(
        icon,
        color: AppColors.deepPurple,
        size: 22,
      ),
    );
  }
}
