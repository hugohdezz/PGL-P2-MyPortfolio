
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../theme/app_colors.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.background,
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: AppColors.primary,
            ),
            accountName: const Text(
              'Canary Dates',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: const Text(
              'Los mejores planes se viven juntos.',
            ),
            currentAccountPicture: const CircleAvatar(
              backgroundColor: AppColors.lightPink,
              child: Icon(
                Icons.favorite,
                color: AppColors.primary,
                size: 30,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
              color: AppColors.primary,
            ),
            title: const Text('Inicio'),
            subtitle: const Text('Pantalla de bienvenida'),
            onTap: () {
              Navigator.pop(context);
              context.go('/');
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              color: AppColors.primary,
            ),
            title: const Text('Mi Portfolio'),
            subtitle: const Text('Mis proyectos personales'),
            onTap: () {
              Navigator.pop(context);
              context.go('/portfolio');
            },
          ),
        ],
      ),
    );
  }
}
