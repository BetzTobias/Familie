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
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          Image.asset(
            'assets/Blumen_aus_Rollen.png',
          ),
          const SizedBox(height: 20),
          Text(
            'Materialien:',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text('• Schere',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Pinsel',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Acryl oder Wasserfarben',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Mischpalette für die Farben',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Holzspieße oder Strohhalme',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Heißkleber',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text('• Klopapierrollen',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          Text(
            'Anleitung:',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
              '1. Zuerst drückst du die leere Toilettenrolle etwas zusammen. Somit erhält die Papprolle eine ovale Form. So sehen die Blätter der Blume später realistischer aus.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/Blumen_aus_rollen_1.png',
          ),
          const Text(
              '2.1. Danach schneidest du die leeren Klorollen in ca. 2 cm breite Pappstreifen.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/Blumen_aus_rollen_2.1.png',
          ),
          const Text(
              '2.2. Für die Blüte benötigst du 5 Pappstreifen. Weiterhin schneidest du 2 weitere Streifen für die Blätter am Stängel zurecht. Somit brauchst du insgesamt 7 Pappstreifen aus Klopapierrollen.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/Blumen_aus_Rollen_2.2.png',
          ),
          const Text(
              '3. Anschließend werden die einzelnen Papprollen bunt angemalt. Verwende für die Blume entweder Pastellfarben oder kräftige Farben. Je nach Lust und Laune kannst du die Pappe bemalen.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/Blumen_aus_Rollen_3.png',
          ),
          const Text(
              '4. Jetzt klebst du die Klorollenstücke am unteren Drittel der Form zusammen. Beginne vom Holzstäbchen aus. Jeden Streifen klebst du nacheinander an. Dann klebst du Nacheinander die Streifen zusammen. So entsteht die Blume.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Image.asset(
            'assets/Blumen_aus_Rollen_4.png',
          ),
          const Text(
              '5. Zum Schluss klebst du die letzten zwei Streifen als Blätter an das Holzstäbchen. Somit ist die Blume aus Klopapierrollen fertig.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
