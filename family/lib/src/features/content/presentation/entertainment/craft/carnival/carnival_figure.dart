import 'package:family/src/common/primary_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/entertainment/craft/craft_list.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:flutter/material.dart';

class CarnivalFigurePage extends StatelessWidget {
  const CarnivalFigurePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        content: [
          const SizedBox(height: 50),
          Text(
            'Faschingsfigur mit Krepppapier',
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          Image.asset(
            'assets/Faschings_figure.png',
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
          const Text(
              '• Tonpapier ( hautfarben, golden, gelb, schwarz, grün, rot, weiß )',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text(
              '• Krepppapier ( gelb, rot, blau, orange, grün, schwarz, weiß )',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Teller oder Schüssel ( als Umrandungshilfe )',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Schnur oder Wolle',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Marker',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Schere',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Kleber',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Locher',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Schnur',
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
              '1. Das Gesicht des Tigers auf orangefarbenem, weißem und schwarzen Tonpapier vorzeichnen. Für die Runde Gesichtsform könnt ihr einen Teller/ Schüssel nehmen und diesen mit Bleistift umranden. Der Tiger bekommt zusätzlich schwarze Streifen.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/Faschings_figure_1.png',
          ),
          const Text('2. Die einzelnen Teile des Gesichtes ausschneiden.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/Faschings_figure_2.png',
          ),
          const Text(
              '3. Die einzelnen Teile des Gesichtes zusammenkleben. Malt der Figur anschließend ein tierisch-wildes Gesicht mit Marker.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/Faschings_figure_3.png',
          ),
          const Text(
              '4. Schwarzes und rotes Krepppapier in lange Streifen zerschneiden oder zerreißen.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/Faschings_figure_4.png',
          ),
          const Text(
              '5. An der Hinterseite des Gesichtes die Krepppapier Streifen ankleben.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/Faschings_figure_5.png',
          ),
          const Text(
              '6. An einer Wand oder der Decke mit Schnur aufhängen, das Loch dazu könnt ihr mit einem Locher an der Oberseite ausstanzen.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/Faschings_figure_6.png',
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
