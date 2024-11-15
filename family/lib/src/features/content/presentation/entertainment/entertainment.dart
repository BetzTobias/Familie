import 'package:family/src/common/primary_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/entertainment/all_songs_page.dart';
import 'package:family/src/features/content/presentation/entertainment/bake/recipe_list.dart';
import 'package:family/src/features/content/presentation/entertainment/craft/craft_list.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

class EntertainmentPage extends StatelessWidget {
  const EntertainmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        content: [
          const SizedBox(height: 50),
          const Text(
            'Unterhaltung', // Die Überschrift
            style: TextStyle(
              fontSize: 24, // Größe der Schrift
              fontWeight: FontWeight.bold, // Fettgedruckt
            ),
            textAlign: TextAlign.center, // Zentriert den Text
          ),
          const SizedBox(height: 30), // Abstand nach der Überschrift
          PrimaryButton(context, 'Basteln', () async {
            await FirebaseAnalytics.instance.logEvent(name: 'basteln');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CraftListPage(),
              ),
            );
          }),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Backen', () async {
            await FirebaseAnalytics.instance.logEvent(name: 'backen');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const RecipeList(),
              ),
            );
          }),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Lieder', () async {
            await FirebaseAnalytics.instance.logEvent(name: 'lieder');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AllSongsPage(),
              ),
            );
          }),
        ],
      ),
    );
  }
}
