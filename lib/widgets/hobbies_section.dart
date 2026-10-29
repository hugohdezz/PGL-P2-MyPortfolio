
import 'package:flutter/material.dart';
import 'hobby_card.dart';

class HobbiesSection extends StatelessWidget {
  const HobbiesSection({super.key});

  static const List<String> hobbies = [
    'Programar',
    'Motos',
    'Gimnasio',
    'Videojuegos',
    'Viajes',
    'Anime',
    'Música',
    'Boxeo',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 12,
          runSpacing: 12,
          children: hobbies
              .map((hobby) => HobbyCard(texto: hobby))
              .toList(),
        ),
      ),
    );
  }
}

