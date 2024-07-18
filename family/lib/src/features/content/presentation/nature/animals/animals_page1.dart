import 'package:family/src/common/continue_back_row.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
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
      child: MenuTemplatePage(
        showBackButton: false,
        content: [
          Text(
            animalsTipps,
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
                  builder: (context) => const AnimalsPage(),
                ),
              );
            },
            onPressedForward: () {
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
          ),
        ],
      ),
    );
  }
}
