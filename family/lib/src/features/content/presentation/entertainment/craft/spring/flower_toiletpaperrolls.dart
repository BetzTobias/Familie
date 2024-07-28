import 'package:family/src/common/primary_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/entertainment/craft/craft_list.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:flutter/material.dart';

class FlowerToiletpaperrollsPage extends StatelessWidget {
  const FlowerToiletpaperrollsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        content: [
          const SizedBox(height: 50),
          Text(
            'Blumen aus Klopapierrollen',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Image.asset(
            'assets/Blumen_aus_Rollen.png',
          ),
          const SizedBox(height: 20),
          Text(
            'Materialien:',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 10),
          const Text('• Schere'),
          const Text('• Pinsel'),
          const Text('• Acryl oder Wasserfarben'),
          const Text('• Mischpalette für die Farben'),
          const Text('• Holzspieße oder Strohhalme'),
          const Text('• Heißkleber'),
          const Text('• Klopapierrollen'),
          const SizedBox(height: 20),
          Text(
            'Anleitung:',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 10),
          const Text(
              '1. Zuerst drückst du die leere Toilettenrolle etwas zusammen. Somit erhält die Papprolle eine ovale Form. So sehen die Blätter der Blume später realistischer aus.'),
          Image.asset(
            'assets/Blumen_aus_rollen_1.png',
          ),
          const Text(
              '2.1. Danach schneidest du die leeren Klorollen in ca. 2 cm breite Pappstreifen.'),
          Image.asset(
            'assets/Blumen_aus_rollen_2.1.png',
          ),
          const Text(
              '2.2. Für die Blüte benötigst du 5 Pappstreifen. Weiterhin schneidest du 2 weitere Streifen für die Blätter am Stängel zurecht. Somit brauchst du insgesamt 7 Pappstreifen aus Klopapierrollen.'),
          Image.asset(
            'assets/Blumen_aus_Rollen_2.2.png',
          ),
          const Text(
              '3. Anschließend werden die einzelnen Papprollen bunt angemalt. Verwende für die Blume entweder Pastellfarben oder kräftige Farben. Je nach Lust und Laune kannst du die Pappe bemalen.'),
          Image.asset(
            'assets/Blumen_aus_Rollen_3.png',
          ),
          const Text(
              '4. Jetzt klebst du die Klorollenstücke am unteren Drittel der Form zusammen. Beginne vom Holzstäbchen aus. Jeden Streifen klebst du nacheinander an. Dann klebst du Nacheinander die Streifen zusammen. So entsteht die Blume.'),
          Image.asset(
            'assets/Blumen_aus_Rollen_4.png',
          ),
          const Text(
              '5. Zum Schluss klebst du die letzten zwei Streifen als Blätter an das Holzstäbchen. Somit ist die Blume aus Klopapierrollen fertig.'),
          Image.asset(
            'assets/Blumen_aus_Rollen_5.png',
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
