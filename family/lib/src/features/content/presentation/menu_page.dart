import 'package:family/src/features/authentication/presentation/manage_user/manage_profile.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/categorie.dart';
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
                  const SizedBox(height: 50),
                  buildMenuButton(context, 'Hauptmenü', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainSelectionPage(),
                      ),
                    );
                  }),
                  const SizedBox(height: 10),
                  buildMenuButton(context, 'Kategorien', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CategoriesPage(),
                      ),
                    );
                  }),
                  const SizedBox(height: 10),
                  buildMenuButton(context, 'Profil verwalten', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ManageProfile(),
                      ),
                    );
                  }),
                  const SizedBox(height: 10),
                  buildMenuButton(context, 'Einstellungen'),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            right: 20,
            child: SizedBox(
              height: 50,
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainSelectionPage(),
                    ),
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

  Widget buildMenuButton(BuildContext context, String category,
      [VoidCallback? onPressed]) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: const Color.fromARGB(255, 239, 138, 138),
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
