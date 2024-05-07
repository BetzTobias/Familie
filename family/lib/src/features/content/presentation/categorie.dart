import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/menu_page.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

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
                  buildCategoryButton(context, 'Lernen'),
                  const SizedBox(
                      height:
                          10), // Abstand zwischen dem Lernen und der Hygiene
                  buildCategoryButton(context, 'Hygiene'),
                  const SizedBox(
                      height:
                          10), // Abstand zwischen der Hygiene und der Unterhaltung
                  buildCategoryButton(context, 'Unterhaltung'),
                  const SizedBox(
                      height:
                          10), // Abstand zwischen der Unterhaltung und der Natur
                  buildCategoryButton(context, 'Natur'),
                  const SizedBox(
                      height:
                          10), // Abstand zwischen der Natur und der Sprachentwicklung
                  buildCategoryButton(context, 'Sprachentwicklung'),
                  const SizedBox(
                      height:
                          10), // Abstand zwischen der Sprachentwicklung und dem Logischen Denken
                  buildCategoryButton(context, 'Logisches Denken'),
                  const SizedBox(
                      height:
                          10), // Abstand zwischen dem Logischen Denken und dem Verständnis
                  buildCategoryButton(context, 'Verständnis'),
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
                      builder: (context) => const MenuPage(),
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

  Widget buildCategoryButton(BuildContext context, String category) {
    return ElevatedButton(
      onPressed: () {},
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
