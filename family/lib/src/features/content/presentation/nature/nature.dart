import 'package:family/src/common/primary_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:family/src/features/content/presentation/nature/animals/animals_page.dart';
import 'package:family/src/features/content/presentation/nature/flowers/flowers_page.dart';
import 'package:family/src/features/content/presentation/nature/trees/trees_page.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

class NaturePage extends StatelessWidget {
  const NaturePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        content: [
          const SizedBox(height: 50),
          const Text(
            'Natur', // Die Überschrift
            style: TextStyle(
              fontSize: 24, // Größe der Schrift
              fontWeight: FontWeight.bold, // Fettgedruckt
            ),
            textAlign: TextAlign.center, // Zentriert den Text
          ),
          const SizedBox(height: 30), // Abstand nach der Überschrift
          PrimaryButton(context, 'Tiere', () async {
            await FirebaseAnalytics.instance.logEvent(name: 'tiere');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AnimalsPage(),
              ),
            );
          }),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Bäume', () async {
            await FirebaseAnalytics.instance.logEvent(name: 'bäume');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TreesPage(),
              ),
            );
          }),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Blumen', () async {
            await FirebaseAnalytics.instance.logEvent(name: 'blumen');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FlowersPage(),
              ),
            );
          }),
        ],
      ),
    );
  }
}
