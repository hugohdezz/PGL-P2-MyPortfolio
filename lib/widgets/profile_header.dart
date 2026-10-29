
import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.lightPink,
      padding: const EdgeInsets.all(12),
      child: const Row(
        children: [
          CircleAvatar(
            radius: 42,
            backgroundImage: AssetImage(
              'assets/images/perfil.jpg',
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Text(
              'Soy alumno de DAM en los Salesianos, '
              'me gusta la Monster, las motos, '
              'los videojuegos y el anime. '
              'Además de las clases de Adrián.',
              style: TextStyle(
                fontSize: 15,
                color: AppColors.textPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
