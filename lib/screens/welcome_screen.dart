import 'package:flutter/material.dart';
import '../widgets/welcome_card.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  
@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Stack(
      children: [
        // Imagen de fondo
        SizedBox.expand(
          child: Image.asset(
            'assets/images/atardecer.png',
            fit: BoxFit.cover,
          ),
        ),

        // Tarjeta de bienvenida
        const SafeArea(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(12),
              child: WelcomeCard(),
            ),
          ),
        ),
      ],
    ),
  );
}

}