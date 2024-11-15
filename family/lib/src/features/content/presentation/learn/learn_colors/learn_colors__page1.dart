import 'package:family/src/common/continue_back_row.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/learn/learn_colors/learn_colors_page.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

class LearnColorsPage1 extends StatelessWidget {
  final int colorsNumber;
  final String colorsTipps;
  const LearnColorsPage1(
      {super.key, required this.colorsNumber, required this.colorsTipps});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        showBackButton: false,
        content: [
          Text(
            colorsTipps,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 100),
          ContinueBackRow(
            onPressedBack: ()async {
               await FirebaseAnalytics.instance
                              .logEvent(name: 'farben tipps');
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LearnColorsPage(),
                ),
              );
            },
            onPressedForward: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    if (colorsNumber == 1) {
// wir befinden uns auf Colorsseite 1
                      return const LearnColorsPage1(
                        colorsNumber: 2,
                        colorsTipps:
                            "Farbige Bücher: Verwende Bücher mit dem lebendigen Farben und einfachen Illustrationen. Lese deinem Kind vor und betone die Farben in den Bildern. Frage es, welche Farben es sieht.",
                      );
                    } else if (colorsNumber == 2) {
// wir befinden uns auf Colorseite 2
                      return const LearnColorsPage1(
                        colorsNumber: 3,
                        colorsTipps:
                            "Malen und Basteln: Lass dein Kind mit Fingerfarben, Buntstiften oder Kreide malen. Benutze Papier in verschiedenen Farben und erkläre, während es malt, welche Farben es gerade verwendet.",
                      );
                    } else if (colorsNumber == 3) {
// wir befinden uns auf Colorsseite 3
                      return const LearnColorsPage1(
                        colorsNumber: 4,
                        colorsTipps:
                            "Farbige Bauklötze: Spiele mit Bauklötzen in verschiedenen Farben. Fordere dein Kind auf, Türme aus Blöcken in der selben Farbe zu bauen oder die Farben zu benennen, während es spielt.",
                      );
                    } else if (colorsNumber == 4) {
// wir befinden uns auf Colorsseite 4
                      return const LearnColorsPage1(
                        colorsNumber: 5,
                        colorsTipps:
                            "Lieder und Reime: Singe Lieder oder sage Reime über Farben. Es gibt viele Kinderfreundliche Lieder, die sich auf Farben konzentrieren. Wiederhole sie gemeinsam und lass dein Kind mitsingen.",
                      );
                    } else if (colorsNumber == 5) {
// wir befinden uns auf Colorsseite 5
                      return const LearnColorsPage1(
                        colorsNumber: 6,
                        colorsTipps:
                            "Sortierspiele: Verwende bunte Bauklötze, Spielfiguren oder andere Gegenstände und lass dein Kind sie nach Farben sortieren. Dies fördert nicht nur das Farbverständnis, sondern auch die Feinmotorik.",
                      );
                    } else {
// wir befinden uns auf Colorsseite 6
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
