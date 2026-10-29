
import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../widgets/custom_drawer.dart';


class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: const CustomDrawer(),
        appBar: AppBar(
          title: const Text('Mi Portfolio'),
          bottom: const TabBar(
            labelColor: AppColors.white,
            unselectedLabelColor: AppColors.lightPink,
            indicatorColor: AppColors.white,
            indicatorWeight: 3,
            tabs: [
              Tab(text: 'Sobre mí'),
              Tab(text: 'Proyectos'),
              Tab(text: 'Contacto'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text(
                'Sobre mí',
                style: TextStyle(
                  fontSize: 24,
                  color: AppColors.primary,
                ),
              ),
            ),
            Center(child: Text('Proyectos')),
            Center(child: Text('Contacto')),
          ],
        ),
      ),
    );
  }
}
