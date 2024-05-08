import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/learn/learn_colors/learn_colors_page.dart';
import 'package:family/src/features/content/presentation/learn/motorskills/motor_skills_page.dart';
import 'package:family/src/features/content/presentation/learn/to_form/to_form_page.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:flutter/material.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

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
                  buildMenuButton(context, 'Motorik', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MotorSkillsPage(),
                      ),
                    );
                  }),
                  const SizedBox(height: 10),
                  buildMenuButton(context, 'Farben', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LearnColorsPage(),
                      ),
                    );
                  }),
                  const SizedBox(height: 10),
                  buildMenuButton(context, 'Formen', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ToFormPage(),
                      ),
                    );
                  }),
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
