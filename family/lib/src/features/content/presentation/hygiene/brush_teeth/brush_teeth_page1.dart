import 'package:family/src/common/continue_back_row.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/hygiene/brush_teeth/brush_teeth_page.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:flutter/material.dart';

class BrushTeethPage1 extends StatelessWidget {
  final int brushNumber;
  final String brushTipps;
  const BrushTeethPage1(
      {super.key, required this.brushTipps, required this.brushNumber});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        showBackButton: false,
        content: [
          Text(
            brushTipps,
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
                  builder: (context) => const BrushTeethPage(),
                ),
              );
            },
            onPressedForward: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    if (brushNumber == 1) {
                      // wir befinden uns auf Brushseite 1
                      return const BrushTeethPage1(
                        brushNumber: 2,
                        brushTipps:
                            "Lustige Zahnbürsten und Zahnputzlieder: Spiele während des Zähneputzens fröhliche Lieder oder erstelle eigene Zahnputzlieder. Das kann den Prozess für das Kind interessanter machen und die Zeit angenehmer gestalten.",
                      );
                    } else if (brushNumber == 2) {
                      // wir befinden uns auf Brushseite 2
                      return const BrushTeethPage1(
                        brushNumber: 3,
                        brushTipps:
                            "Zusammen putzen: Putze gemeinsam mit deinem Kind die Zähne. Kinder lernen oft durch Nachahmung, und es kann ihnen helfen, die richtige Technik zu verstehen.",
                      );
                    } else if (brushNumber == 3) {
                      // wir befinden uns auf Brushseite 3
                      return const BrushTeethPage1(
                        brushNumber: 4,
                        brushTipps:
                            "Belohnungssystem einführen: Erstelle ein Belohnungssystem, bei dem das Kind für regelmäßiges und gründliches Zähneputzen kleine Belohnungen erhalten kann. Dies kann die Motivation steigern.",
                      );
                    } else if (brushNumber == 4) {
                      // wir befinden uns auf Brushseite 4
                      return const BrushTeethPage1(
                        brushNumber: 5,
                        brushTipps:
                            "Zahnpflege als Spiel gestalten: Baue das Zähneputzen in ein Spiel ein. Zum Beispiel könnten die Zähne die Burg eines Drachens sein, und die Zahnbürste ist der Ritter, der die Burg sauber hält.",
                      );
                    } else if (brushNumber == 5) {
                      // wir befinden uns auf Brushseite 5
                      return const BrushTeethPage1(
                        brushNumber: 6,
                        brushTipps:
                            "Gemeinsame Belohnung: Setze ein gemeinsames Ziel für die Familie, wie z. B. eine besondere Aktivität oder Belohnung, wenn alle konsequent ihre Zähne putzen.",
                      );
                    } else {
                      // wir befinden uns auf Brushseite 6
                      return const MainSelectionPage();
                    }
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
