import 'package:family/src/common/primary_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/entertainment/craft/craft_list.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:flutter/material.dart';

class EggCartonSharksPage extends StatelessWidget {
  const EggCartonSharksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        content: [
          const SizedBox(height: 50),
          Text(
            'Haie aus Eierkarton',
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          Image.asset(
            'assets/Haie_aus_Eierkarton.png',
          ),
          const SizedBox(height: 20),
          Text(
            'Materialien:',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text('• Kartonpapier (Blau)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Schere',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Bastelkleber, Heißkleber',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Farbe (blau und weiß)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Pinsel',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Schwarzer Stift',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Kulleraugen',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Eierkarton',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          Text(
            'Anleitung:',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
              '1. Um dieses Hai-Handwerk herzustellen, benötigen wir die stacheligen Teile im Eierkarton. Besorgen Sie sich zunächst einen Eierkarton und schneiden Sie zwei Stacheln daraus aus, wie unten gezeigt. Schneiden Sie einen davon etwas kürzer als den anderen.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/Haie_aus_Eierkarton_schritt_1.png',
          ),
          const Text(
              '2. Jetzt müssen wir diese Teile zusammenkleben. Tragen Sie etwas Kleber auf den größeren Teil auf und kleben Sie den kleineren Teil hinein, wie unten gezeigt. Malen Sie nun eine Seite davon blau und die andere Seite weiß.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/Haie_aus_Eierkarton_Schritt_2.png',
          ),
          const Text(
              '3. Sobald die Farbe getrocknet ist, kleben Sie auf beiden Seiten Kulleraugen auf. Schneiden Sie Flossen und Schwanz aus blauem Karton aus und kleben Sie sie (bitte nur für Erwachsene) mit Heißkleber auf den Körper des Hais.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/Haie_aus_Eierkarton_Schritt_3.png',
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
