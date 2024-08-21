import 'package:family/src/common/primary_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/entertainment/craft/craft_list.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:flutter/material.dart';

class SnowmannSocksPage extends StatelessWidget {
  const SnowmannSocksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        content: [
          const SizedBox(height: 50),
          Text(
            'Schneemann aus alten Socken',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          Image.asset(
            'assets/Schneemann_Socke.png',
          ),
          const SizedBox(height: 20),
          Text(
            'Materialien:',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text('• Eine alte weißse Socke',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Baumwollgarn',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Reis',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Füllwatte',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Nadel & Schere',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Stoffreste',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Kulleraugen',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Knöpfe',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          Text(
            'Anleitung:',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
              '1. Nun füllt ihr die Socke mit Reis und verschließt nun den ersten Bereich mit einem Band.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/Schneemann_Socke_1.png',
          ),
          const Text(
              '2. Anschließend nehmt ihr die Füllwatte und füllt die Socke danach nehmt ihr ein weiteres Baumwollband zur Hand und schnürt den Kopf des Socken-Schneemannes ab, sodass ein kegelförmiger Körper entsteht.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/Schneemann_Socke_2.png',
          ),
          const Text(
              '3. Aus alten Stoffresten könnt ihr zudem einen kleinen Schal anfertigen. Anschließend das Gesicht des Socken-Schneemannes nach Lust und Laune mit Stiften und Knöpfen gestalten – und schon ist euer selbstgebastelter Schneemann aus Socken fertig!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/Schneemann_Socke_3.png',
          ),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Zurück zu Auswahl', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CraftListPage(),
              ),
            );
          }),
        ],
      ),
    );
  }
}
