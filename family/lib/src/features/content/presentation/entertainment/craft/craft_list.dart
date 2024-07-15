import 'package:family/src/common/menue_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/entertainment/craft/autumn/autumn_list.dart';
import 'package:family/src/features/content/presentation/entertainment/craft/carnival/carnival_list.dart';
import 'package:family/src/features/content/presentation/entertainment/craft/easter/easter_list.dart';
import 'package:family/src/features/content/presentation/entertainment/craft/generally/generally_list.dart';
import 'package:family/src/features/content/presentation/entertainment/craft/spring/spring_list.dart';
import 'package:family/src/features/content/presentation/entertainment/craft/winter/winter_list.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:family/src/features/content/presentation/menu_page.dart';
import 'package:flutter/material.dart';

class CraftListPage extends StatelessWidget {
  const CraftListPage({super.key});

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
                  buildMenuButton(context, 'Frühling', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SpringListPage(),
                      ),
                    );
                  }),
                  const SizedBox(height: 10),
                  buildMenuButton(context, 'Sommer', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SpringListPage(),
                      ),
                    );
                  }),
                  const SizedBox(height: 10),
                  buildMenuButton(context, 'Herbst', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AutumnListPage(),
                      ),
                    );
                  }),
                  const SizedBox(height: 10),
                  buildMenuButton(context, 'Winter', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WinterListPage(),
                      ),
                    );
                  }),
                  const SizedBox(height: 10),
                  buildMenuButton(context, 'Fashing', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CarnivalListPage(),
                      ),
                    );
                  }),
                  const SizedBox(height: 10),
                  buildMenuButton(context, 'Ostern', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EasterListPage(),
                      ),
                    );
                  }),
                  const SizedBox(height: 10),
                  buildMenuButton(context, 'Allgemein', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GenerallyListPage(),
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
          Positioned(
            top: 100,
            left: 20,
            child: MenuButton(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MenuPage()),
                );
              },
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
