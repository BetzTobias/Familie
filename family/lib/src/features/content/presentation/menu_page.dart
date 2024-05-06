import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                      height:
                          50), // Abstand vom oberen Bildschirmrand zum Lernen
                  buildMenueButton(context, 'Hauptmenü'),
                  const SizedBox(
                      height:
                          10), // Abstand zwischen dem Lernen und der Hygiene
                  buildMenueButton(context, 'Kategorien'),
                  const SizedBox(
                      height:
                          10), // Abstand zwischen der Hygiene und der Unterhaltung
                  buildMenueButton(context, 'Profil verwalten'),
                  const SizedBox(
                      height:
                          10), // Abstand zwischen der Unterhaltung und der Natur
                  buildMenueButton(context, 'Einstellungen'),
                  const SizedBox(
                      height:
                          10), // Abstand zwischen der Natur und der Sprachentwicklung
                  buildMenueButton(
                    context,
                    'Abmelden',
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            right: 20,
            child: SizedBox(
              height: 50, // Variable Höhe
              width: 100, // Feste Breite
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainSelectionPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFF16972A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Zurück',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMenueButton(BuildContext context, String category) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Colors.black),
        ),
      ),
      child: Text(
        category,
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
