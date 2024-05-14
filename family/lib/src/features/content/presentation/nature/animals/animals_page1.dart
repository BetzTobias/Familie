import 'package:family/src/common/menue_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:family/src/features/content/presentation/menu_page.dart';
import 'package:family/src/features/content/presentation/nature/animals/animals_page.dart';
import 'package:flutter/material.dart';

class AnimalsPage1 extends StatelessWidget {
  final int animalsNumber;
  final String animalsTipps;
  const AnimalsPage1(
      {super.key, required this.animalsNumber, required this.animalsTipps});

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
                    animalsTipps,
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
                                builder: (context) => const AnimalsPage(),
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
                                  if (animalsNumber == 1) {
                                    // wir befinden uns auf Brushseite 1
                                    return const AnimalsPage1(
                                      animalsNumber: 2,
                                      animalsTipps:
                                          "Tierfiguren und Spielzeug: Verwende Tierfiguren und Spielzeug, um die verschiedenen Arten von Tieren darzustellen. Lass das Kind die Tiere sortieren, benennen und ihre Merkmale erklären.",
                                    );
                                  } else if (animalsNumber == 2) {
                                    // wir befinden uns auf Brushseite 2
                                    return const AnimalsPage1(
                                      animalsNumber: 3,
                                      animalsTipps:
                                          "Tierpuzzle und Spiele: Spiele Puzzles mit Tiermotiven oder Online-Spiele, die Tiere und ihre Lebensräume vorstellen. Dies kann eine unterhaltsame Möglichkeit sein, Tiere zu erkunden.",
                                    );
                                  } else if (animalsNumber == 3) {
                                    // wir befinden uns auf Brushseite 3
                                    return const AnimalsPage1(
                                      animalsNumber: 4,
                                      animalsTipps:
                                          "Besuch in einem Zoo oder Tierpark: Plane einen Besuch in einem Zoo oder Tierpark. Das direkte Beobachten von Tieren in ihrer Umgebung kann das Verständnis für ihre Lebensweise vertiefen.",
                                    );
                                  } else if (animalsNumber == 4) {
                                    // wir befinden uns auf Brushseite 4
                                    return const AnimalsPage1(
                                      animalsNumber: 5,
                                      animalsTipps:
                                          "Tierfilme und -dokumentationen: Schau kinderfreundliche Tierfilme oder -dokumentationen. Dies kann das Interesse am Lernen über Tiere vertiefen und visuelle Eindrücke vermitteln.",
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
