import 'package:family/src/common/menue_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:family/src/features/content/presentation/menu_page.dart';
import 'package:family/src/features/content/presentation/nature/trees/trees_page.dart';
import 'package:flutter/material.dart';

class TreesPage1 extends StatelessWidget {
  final int treesNumber;
  final String treesTipps;
  const TreesPage1(
      {super.key, required this.treesNumber, required this.treesTipps});

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
                    treesTipps,
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
                                builder: (context) => const TreesPage(),
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
                                  if (treesNumber == 1) {
                                    // wir befinden uns auf Regelseite 1
                                    return const TreesPage1(
                                      treesNumber: 2,
                                      treesTipps:
                                          "Blätter sammeln und sortieren: Sammelt gemeinsam Blätter von verschiedenen Bäumen. Sortiert sie nach Größe, Form oder Farbe. Dies fördert die Beobachtungsfähigkeiten des Kindes.",
                                    );
                                  } else if (treesNumber == 2) {
                                    // wir befinden uns auf Regelseite 2
                                    return const TreesPage1(
                                      treesNumber: 3,
                                      treesTipps:
                                          "Baumzeichnungen und Bastelprojekte: Lass das Kind Bäume zeichnen oder basteln. Verwende dabei verschiedene Materialien wie Papier, Karton oder Naturmaterialien. Dies fördert die Kreativität und das Verständnis für Baumstrukturen.",
                                    );
                                  } else if (treesNumber == 3) {
                                    // wir befinden uns auf Regelseite 3
                                    return const TreesPage1(
                                      treesNumber: 4,
                                      treesTipps:
                                          "Baumringe und Altersbestimmung: Erkläre, wie die Ringe eines Baumstamms das Alter eines Baumes anzeigen können. Schau dir einen Querschnitt eines Baumes an und zähle die Ringe, um das Alter zu schätzen.",
                                    );
                                  } else {
                                    // wir befinden uns auf Regelseite 4
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
