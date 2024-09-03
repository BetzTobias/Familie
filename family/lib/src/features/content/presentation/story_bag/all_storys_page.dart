import 'package:family/src/common/primary_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:family/src/features/content/presentation/story_bag/little_red_riding_hood.dart';
import 'package:family/src/features/content/presentation/story_bag/story_bags.dart';
import 'package:family/src/features/content/presentation/story_bag/the_jungle_book.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

class AllStorysPage extends StatelessWidget {
  const AllStorysPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        showMenuButton: false,
        backButtonDestination: const StoryPage(),
        content: [
          const SizedBox(height: 50),
          const Text(
            'Geschichtensäckchen', // Die Überschrift
            style: TextStyle(
              fontSize: 24, // Größe der Schrift
              fontWeight: FontWeight.bold, // Fettgedruckt
            ),
            textAlign: TextAlign.center, // Zentriert den Text
          ),
          const SizedBox(height: 30), // Abstand nach der Überschrift
          PrimaryButton(context, 'Das Dschungelbuch', () async {
            await FirebaseAnalytics.instance.logEvent(name: 'dschungelbuch');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TheJungleBook(),
              ),
            );
          }),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Rotkäppchen', () async {
            await FirebaseAnalytics.instance.logEvent(name: 'rotkäppchen');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LittleRedRidingHood(),
              ),
            );
          }),
        ],
      ),
    );
  }
}
