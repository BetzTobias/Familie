import 'dart:math';

import 'package:flutter/material.dart';

// Hintergrundseite für alle Kategorien
class Hintergrundseite extends StatelessWidget {
  final Widget child;

  const Hintergrundseite({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Logo für oben RECHTS
          Positioned(
            top: 50,
            left: 201,
            child: Transform.rotate(
              angle: 50 * (pi / 180),
              child: Opacity(
                opacity: 0.15,
                child: Image.asset(
                  'lib/assets/Hauptlogo.png',
                  width: 200,
                  height: 210.63,
                ),
              ),
            ),
          ),
          //Logo für oben LINKS
          Positioned(
            top: 53, // Position von unten
            right: 201, // Position von rechts
            child: Transform.rotate(
              angle: -50 * (pi / 180),
              child: Opacity(
                opacity: 0.15,
                child: Image.asset(
                  'lib/assets/Hauptlogo.png', // Pfad zum Bild
                  width: 200, // Breite des Bildes
                  height: 210.63, // Höhe des Bildes
                ),
              ),
            ),
          ),
          //Logo für mitte RECHTS
          Positioned(
            top: 308, // Position von mitte
            right: 201, // Position von rechts
            child: Transform.rotate(
              angle: -50 * (pi / 180),
              child: Opacity(
                opacity: 0.15,
                child: Image.asset(
                  'lib/assets/Hauptlogo.png', // Pfad zum Bild
                  width: 200, // Breite des Bildes
                  height: 240, // Höhe des Bildes
                ),
              ),
            ),
          ),
          //Logo für mitte LINKS
          Positioned(
            top: 300, // Position von mitte
            left: 201, // Position von links
            child: Transform.rotate(
              angle: 49.32 * (pi / 180),
              child: Opacity(
                opacity: 0.15,
                child: Image.asset(
                  'lib/assets/Hauptlogo.png', // Pfad zum Bild
                  width: 200, // Breite des Bildes
                  height: 246.9, // Höhe des Bildes
                ),
              ),
            ),
          ),
          //Logo für unten RECHTS
          Positioned(
            top: 600, // Position von unten
            left: 201, // Position von rechts
            child: Transform.rotate(
              angle: 50 * (pi / 180),
              child: Opacity(
                opacity: 0.15,
                child: Image.asset(
                  'lib/assets/Hauptlogo.png', // Pfad zum Bild
                  width: 200, // Breite des Bildes
                  height: 240, // Höhe des Bildes
                ),
              ),
            ),
          ),
          //Logo für unten LINKS
          Positioned(
            top: 600, // Position von unten
            right: 201, // Position von links
            child: Transform.rotate(
              angle: -50 * (pi / 180),
              child: Opacity(
                opacity: 0.15,
                child: Image.asset(
                  'lib/assets/Hauptlogo.png', // Pfad zum Bild
                  width: 200, // Breite des Bildes
                  height: 246.9, // Höhe des Bildes
                ),
              ),
            ),
          ),
          //Logo für mitte OBEN
          Positioned(
            top: 170, // Position von unten
            right: 110, // Position von links
            child: Transform.rotate(
              angle: 0 * (pi / 180),
              child: Opacity(
                opacity: 0.15,
                child: Image.asset(
                  'lib/assets/Hauptlogo.png', // Pfad zum Bild
                  width: 180, // Breite des Bildes
                  height: 246.9, // Höhe des Bildes
                ),
              ),
            ),
          ),
          //Logo für mitte UNTEN
          Positioned(
            top: 450, // Position von unten
            right: 100, // Position von rechts
            child: Transform.rotate(
              angle: 0 * (pi / 180),
              child: Opacity(
                opacity: 0.15,
                child: Image.asset(
                  'lib/assets/Hauptlogo.png', // Pfad zum Bild
                  width: 200, // Breite des Bildes
                  height: 246.9, // Höhe des Bildes
                ),
              ),
            ),
          ),

          child,
        ],
      ),
    );
  }
}
