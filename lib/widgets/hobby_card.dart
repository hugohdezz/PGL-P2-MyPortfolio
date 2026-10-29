
import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class HobbyCard extends StatelessWidget {
  final String texto;

  const HobbyCard({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 145,
      height: 48,
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.primary,
        border: Border.all(
          color: AppColors.darkSurface,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          texto,
          style: const TextStyle(
            fontSize: 15,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
