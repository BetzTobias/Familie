import 'package:family/src/common/continue_back_row.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/logical_thinking/logical_thinking_page0.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:flutter/material.dart';

class LogicalThinkingPage1 extends StatelessWidget {
  final int logicNumber;
  final String logicTipps;
  const LogicalThinkingPage1(
      {super.key, required this.logicNumber, required this.logicTipps});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        showBackButton: false,
        content: [
          Text(
            logicTipps,
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
                  builder: (context) => const LogicalThinkingPage0(),
                ),
              );
            },
            onPressedForward: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    if (logicNumber == 1) {
// wir befinden uns auf Regelseite 1
                      return const LogicalThinkingPage1(
                        logicNumber: 2,
                        logicTipps:
                            "Bunte Formenbastelprojekte: Erstelle gemeinsam bunte Formen aus Papier oder Stoff. Ordne sie dann nach Größe. Dies kann als Bastelprojekt dienen und gleichzeitig das Verständnis für Größenunterschiede fördern.",
                      );
                    } else if (logicNumber == 2) {
// wir befinden uns auf Regelseite 2
                      return const LogicalThinkingPage1(
                        logicNumber: 3,
                        logicTipps:
                            "Größenmemory: Spiele ein Memory-Spiel mit Karten, auf denen Formen unterschiedlicher Größe abgebildet sind. Das Kind kann versuchen, die Paare zu finden und gleichzeitig die Größen zu vergleichen.",
                      );
                    } else if (logicNumber == 3) {
// wir befinden uns auf Regelseite 3
                      return const LogicalThinkingPage1(
                        logicNumber: 4,
                        logicTipps:
                            "Größenreime und Lieder: Erfinde einfache Reime oder Lieder, die die verschiedenen Größen betonen. Dies kann das Lernen erleichtern und Spaß machen.",
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
