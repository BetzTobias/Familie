import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'lib/assets/Hauptlogo.png', // Pfad zum Logo-Bild
      width: 480, // Breite des Logos
      height: 480, // Höhe des Logos
    );
  }
}
