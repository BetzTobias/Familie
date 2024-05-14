import 'package:family/src/common/menue_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/hygiene/toilet_training/toilet_training_page.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:family/src/features/content/presentation/menu_page.dart';
import 'package:flutter/material.dart';

class ToiletTrainingPage1 extends StatelessWidget {
  final int toiletNumber;
  final String toiletTipps;
  const ToiletTrainingPage1(
      {super.key, required this.toiletNumber, required this.toiletTipps});

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
                    toiletTipps,
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
                                builder: (context) =>
                                    const ToiletTrainingPage(),
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
                                  if (toiletNumber == 1) {
                                    // wir befinden uns auf Regelseite 1
                                    return const ToiletTrainingPage1(
                                      toiletNumber: 2,
                                      toiletTipps:
                                          "Bücher über den Toilettengang: Lese zusammen mit deinem Kind Bücher über den Toilettengang. Es gibt viele kinderfreundliche Bücher, die den Vorgang humorvoll und informativ darstellen.",
                                    );
                                  } else if (toiletNumber == 2) {
                                    // wir befinden uns auf Regelseite 2
                                    return const ToiletTrainingPage1(
                                      toiletNumber: 3,
                                      toiletTipps:
                                          "Puppen oder Kuscheltiere einbeziehen: Lass das Kind seinen Puppen oder Kuscheltieren beibringen, wie man auf die Toilette geht. Dies ermöglicht es dem Kind, das Gelernte zu verinnerlichen, indem es es auf spielerische Weise weitergibt.",
                                    );
                                  } else if (toiletNumber == 3) {
                                    // wir befinden uns auf Regelseite 3
                                    return const ToiletTrainingPage1(
                                      toiletNumber: 4,
                                      toiletTipps:
                                          "Belohnungssystem einführen: Setze ein Belohnungssystem für erfolgreiche Toilettengänge ein. Dies könnte kleine Belohnungen oder Aufkleber beinhalten, die das Kind auf eine spezielle Tafel kleben kann.",
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
