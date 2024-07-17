import 'package:family/src/common/continue_back_row.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:family/src/features/content/presentation/nature/flowers/flowers_page.dart';
import 'package:flutter/material.dart';

class FlowersPage1 extends StatelessWidget {
  final int flowersNumber;
  final String flowersTipps;
  const FlowersPage1(
      {super.key, required this.flowersNumber, required this.flowersTipps});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        showBackButton: false,
        content: [
          Text(
            flowersTipps,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 100),
          ContinueBackRow(
            onPressedBack: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const FlowersPage(),
                ),
              );
            },
            onPressedForward: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    if (flowersNumber == 1) {
// wir befinden uns auf Regelseite 1
                      return const FlowersPage1(
                        flowersNumber: 2,
                        flowersTipps:
                            "Blumen im Garten pflanzen: Pflanze gemeinsam Blumen im Garten. Dies gibt dem Kind die Möglichkeit, den Wachstumsprozess zu beobachten und die Pflege von Pflanzen zu lernen.",
                      );
                    } else if (flowersNumber == 2) {
// wir befinden uns auf Regelseite 2
                      return const FlowersPage1(
                        flowersNumber: 3,
                        flowersTipps:
                            "Blumenmalerei und Bastelprojekte: Lass das Kind Blumen malen oder basteln. Verwende dabei verschiedene Materialien wie Farben, Papier, Stoff oder Naturmaterialien. Dies fördert die künstlerischen Fähigkeiten und das Verständnis für Blumenstrukturen.",
                      );
                    } else if (flowersNumber == 3) {
// wir befinden uns auf Regelseite 3
                      return const FlowersPage1(
                        flowersNumber: 4,
                        flowersTipps:
                            "Geschichten über Blumen: Erzähle Geschichten über Blumen und ihre Bedeutung in der Natur. Betone, wie Blumen für Bienen wichtig sind und wie sie bei der Bestäubung helfen.",
                      );
                    } else {
// wir befinden uns auf Regelseite 4
                      return const MainSelectionPage();
                    }
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
