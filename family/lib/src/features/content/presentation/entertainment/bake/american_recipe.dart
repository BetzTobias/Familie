import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:flutter/material.dart';

class AmericanRecipe extends StatelessWidget {
  const AmericanRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      
      child: MenuTemplatePage(
        showMenuButton: false,
        content: [
          const SizedBox(height: 34),
          const Center(
            child: Text(
              'Amerikaner',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: Image.asset(
              'assets/amerikaner.png',
              height: 200,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Zutaten Teig:',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            '- 50g Margarine\n- 100g Puderzucker\n- 1 Pck. Vanillezucker\n- 2 Eier\n- 1 Päckchen Vanillezucker\n- 3Tl. Backpulver\n- 5 El. Milch',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 16),
          const Text(
            'Zutaten Glassur:',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            '- Puderzucker\n- Zitronensaft\n- Schokolade',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 16),
          const Text(
            'Anleitung:',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Zwei Backbleche mit Backpapier auslegen und den Backofen auf 160 °C Umluft vorheizen. Magarine mit dem Puderzucker und dem Vanillezucker mit einem Handrührgerät schaumig schlagen. Eier nach und nach hinzugeben. Mehl, Backpulver und Puddingpulver vermischen und löffelweise im Wechsel mit der Milch zum Teig hinzugeben. Alles gut verrühren. Der Teig ist dabei sehr zäh, wird aber nach dem Backen sehr fluffig und zart.',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 8),
          const Text(
            'Teig in ein Spritztülle mit runder Öffnung füllen. Alternativ in einen Gefrierbeutel und die Spitze abschneiden. Pro Blech ca. 5 Kreise mit einem Durchmesser von 10-12 cm spritzen. Genug Abstand lassen, da die Amerikaner stark aufgehen beim Backen. Die Amerikaner für 15 Minuten backen, bis sie leicht braun sind.',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 8),
          const Text(
            'Die Amerikaner nach Beliebten verzieren. Dafür zum Beispiel Puderzucker mit Zitronensaft vermengen und alles zu einer dickflüssigen Glasur verrühren. Die Amerikaner mit der Glasur bestreichen. Schokolade schmelzen lassen und damit die Glasur in Osteroptik verzieren.',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
