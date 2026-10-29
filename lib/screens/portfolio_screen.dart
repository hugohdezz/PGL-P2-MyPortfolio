
import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/profile_header.dart';
import '../widgets/hobbies_section.dart';
import '../widgets/repository_section.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  int indiceSeccionSeleccionada = 0;

  void cambiarSeccion(int indice) {
    setState(() {
      indiceSeccionSeleccionada = indice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      drawer: const CustomDrawer(),

      appBar: AppBar(
        title: const Text('Portfolio de Hugo'),
      ),

      body: SafeArea(
        child: Column(
          children: [
            const ProfileHeader(),
            Expanded(
              child: indiceSeccionSeleccionada == 0
                  ? const HobbiesSection()
                  : const RepositorySection(),
            ),
          ],
        ),
      ),

      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () => cambiarSeccion(0),
                  child: const Text('Mis hobbies'),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => cambiarSeccion(1),
                  child: const Text('Mi repositorio'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
