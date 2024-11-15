import 'package:family/src/common/primary_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/entertainment/craft/craft_list.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:flutter/material.dart';

class EasterChicksPage extends StatelessWidget {
  const EasterChicksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        content: [
          const SizedBox(height: 50),
          Text(
            'Osterküken Eierbecher',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          Image.asset(
            'assets/Osterküken.png',
          ),
          const SizedBox(height: 20),
          Text(
            'Materialien:',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text('• Leere Klopapier- oder Küchenpapierrollen',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Wolle in einer Farbe deiner Wahl',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Bunte Pappe',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Wackelaugen',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Schere und Kleber',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          Text(
            'Anleitung:',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
              '1. Als erstes wird die leere Klopapierrolle quer in zwei gleichgroße Teile geschnitten.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/Osterküken_1.png',
          ),
          const Text(
              '2. Dann beginnst du damit, den Wollfaden eng um die zerschnittenen Rollenteile zu wickeln. Beginne oben und wickele ordentlich Faden bis unten, bis nichts mehr von der Rolle zu sehen ist.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/Osterküken_2.png',
          ),
          const Text(
              '3. Wenn das Rollen-Teil vollständig mit Wolle umwickelt ist, schneidest du den Faden ab und befestigst ihn, in dem du ihn in die umwickelten Fäden stopfst. Falls das nicht hält kannst du auch einen Tropfen Kleber zur Hilfe nehmen',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/Osterküken_3.png',
          ),
          const Text(
              '4. Jetzt musst du nur noch Flügel, Füßchen, Kamm und Schnabel aus Pappe ausschneiden und mit Kleber an der umwickelten Rolle befestigen. Dann nur noch Wackelaugen aufkleben – fertig ist dein selbstgebastelter Eierbecher! Tipp: Für den Schnabel schneidest du einfach eine kleine Raute aus, die du dann in der Mitte knickst, sodass der Schnabel offen ist.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/Osterküken_4.png',
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
