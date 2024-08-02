import 'package:family/src/common/primary_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/entertainment/craft/craft_list.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:flutter/material.dart';

class KneadingSoapPage extends StatelessWidget {
  const KneadingSoapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        content: [
          const SizedBox(height: 50),
          Text(
            'Knetseife selber machen',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Image.asset(
            'assets/Knetseife.png',
          ),
          const SizedBox(height: 20),
          Text(
            'Materialien:',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 10),
          const Text('• 2 El Flüssigseife oder Duschgel'),
          const Text('• 2 El Speiseöl (alternative Handcreme)'),
          const Text('• 4 El Speisestärke / Maisstärke'),
          const Text('• 1 Prise Salz für die Haltbarkeit'),
          const Text('• Schüssel, Ausstechformen'),
          const Text('• Nudelholz'),
          const Text('• Optional Seifenfarbe, Seifenduft, Lebensmittelglitzer'),
          const SizedBox(height: 20),
          Text(
            'Anleitung:',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 10),
          const Text(
              '1. Waschknete herstellen ist einfach. Beginne zunächst mit einer kleinen Menge. Gib jeweils zwei Esslöffel Duschgel zusammen mit zwei Esslöffel Öl und ca. vier Esslöffel Speisestärke in eine kleine Schüssel. Vermenge die Zutaten miteinander bis daraus eine Masse entsteht, die sich genauso leicht formen lässt wie Spielknete. Sollte die Seifenknete zu feucht sein, knete noch Speisestärke in die Masse. Ist sie zu trocken, gib einfach etwas Duschgel und Öl dazu.'),
          Image.asset(
            'assets/Knetseife_1.png',
          ),
          const Text(
              '2. Durch das Verkneten mit Speisestärke, bekommt das verwendete Duschgel einen hellen Pastellfarbenen Farbton. Wenn du die Waschknete bunt einfärben möchtest, solltest du dir besser Handschuhe anziehen. Du kannst entweder spezielle Seifenfarbe oder normale Lebensmittelfarbe benutzen.'),
          Image.asset(
            'assets/Knetseife_2.png',
          ),
          const Text(
              '3. Bestreue deine Arbeitsfläche mit Speisestärke und rolle deine Knetseife aus. Jetzt kannst du die Waschknete wie Kekse ausstechen. Hier sind deiner Kreativität keine Grenzen gesetzt. Selbstverständlich kannst du auch niedliche Figuren aus der bunten Badeknete modellieren. Kleine Risse kannst du mit einem Tropfen Öl reparieren. Die fertigen Seifenstücke haben wir für drei Stunden trocknen lassen, bevor wir sie luftdicht in einem Marmeladenglas verschlossen'),
          Image.asset(
            'assets/Knetseife_3.png',
          ),
          const Text(
              '4. Natürlich ist die selbstgemachte Waschknete nicht so lange haltbar wie gewöhnliche Seife. Bewahre sie in einem luftdichten Behälter auf, anderenfalls wird deine Waschseife zu trocken und bröselt auseinander. Ein Marmeladenglas eignet sich hierfür gut. Um sie haltbarer zu machen. Die Knetseife sollte so 2-3 Wochen haltbar sein.'),
          Image.asset(
            'assets/Knetseife_4.png',
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
