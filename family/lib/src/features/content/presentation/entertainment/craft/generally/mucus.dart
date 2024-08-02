import 'package:family/src/common/primary_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/entertainment/craft/craft_list.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:flutter/material.dart';

class MucusPage extends StatelessWidget {
  const MucusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        content: [
          const SizedBox(height: 50),
          Text(
            'Schleim aus Duschgel und Stärke',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Image.asset(
            'assets/Schleim.png',
          ),
          const SizedBox(height: 20),
          Text(
            'Materialien:',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 10),
          const Text('• Duschgel oder Cremeseife'),
          const Text('• Stärke'),
          const Text('• optional Farbe oder Glitzer'),
          const SizedBox(height: 20),
          Text(
            'Anleitung:',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 10),
          const Text(
              '1. Und so wird Schleim aus Duschgel und Stärke selber gemacht: Füllt Duschgel in eine Schüssel und gebt so viel Stärke dazu, bis die gewünschte schleimige Konsistenz erreicht ist. Ist der Schleim zu trocken, gebt mehr Duschgel dazu. Ist der Schleim zu klebrig - etwas mehr Stärke. Optional könnt ihr Farbe oder Glitzer hinzufügen'),
          Image.asset(
            'assets/Schleim_1.png',
          ),
          const Text(
              '2. Tipp: Wenn ihr noch mehr Stärke dazugebt, könnt ihr aus eurem Schleim Knetseife machen.'),
          Image.asset(
            'assets/Schleim_2.png',
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
