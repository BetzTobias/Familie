import 'package:family/src/common/primary_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/entertainment/entertainment.dart';
import 'package:family/src/features/content/presentation/hygiene/hygiene.dart';
import 'package:family/src/features/content/presentation/learn/learn.dart';
import 'package:family/src/features/content/presentation/logical_thinking/logical_thinking.dart';
import 'package:family/src/features/content/presentation/menu_page.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:family/src/features/content/presentation/nature/nature.dart';
import 'package:family/src/features/content/presentation/story_bag/story_bags.dart';
import 'package:family/src/features/content/presentation/understanding/understanding.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        showMenuButton: false,
        backButtonDestination: const MenuPage(),
        content: [
          const SizedBox(height: 50),
          PrimaryButton(
            context,
            'Lernen',
            () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LearnPage()),
              );
            },
          ),
          const SizedBox(
              height: 10), // Abstand zwischen dem Lernen und der Hygiene
          PrimaryButton(
            context,
            'Hygiene',
            () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HygienePage()),
              );
            },
          ),
          const SizedBox(
              height: 10), // Abstand zwischen der Hygiene und der Unterhaltung
          PrimaryButton(
            context,
            'Unterhaltung',
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const EntertainmentPage()),
              );
            },
          ),
          const SizedBox(
              height: 10), // Abstand zwischen der Unterhaltung und der Natur
          PrimaryButton(
            context,
            'Natur',
            () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NaturePage()),
              );
            },
          ),
          const SizedBox(
              height:
                  10), // Abstand zwischen der Natur und der Sprachentwicklung
          PrimaryButton(
            context,
            'Sprachentwicklung',
            () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const StoryPage()),
              );
            },
          ),
          const SizedBox(
              height:
                  10), // Abstand zwischen der Sprachentwicklung und dem Logischen Denken
          PrimaryButton(
            context,
            'Logisches Denken',
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const LogicalThinkingPage()),
              );
            },
          ),
          const SizedBox(
              height:
                  10), // Abstand zwischen dem Logischen Denken und dem Verständnis
          PrimaryButton(
            context,
            'Verständnis',
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const UnderstandingPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
