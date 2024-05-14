import 'package:family/src/common/menue_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/hygiene/brush_teeth/brush_teeth_page.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:family/src/features/content/presentation/menu_page.dart';
import 'package:flutter/material.dart';

class BrushTeethPage1 extends StatelessWidget {
  final int brushNumber;
  final String brushTipps;
  const BrushTeethPage1(
      {super.key, required this.brushTipps, required this.brushNumber});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    brushTipps,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 100),
                  // Zurück- und Vorwärts-Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 100,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const BrushTeethPage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0XFF16972A),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            'Zurück',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 100,
                        child: ElevatedButton(
                          onPressed: () {
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
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0XFFEBE216),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            'Weiter',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Positioniert den Menu-Button oben links
          Positioned(
            top: 100,
            left: 20,
            child: MenuButton(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MenuPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
