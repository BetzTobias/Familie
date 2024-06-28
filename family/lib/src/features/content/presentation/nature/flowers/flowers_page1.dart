import 'package:family/src/common/menue_button.dart';
import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:family/src/features/content/presentation/menu_page.dart';
import 'package:family/src/features/content/presentation/nature/flowers/flowers_page.dart';
import 'package:flutter/material.dart';

class FlowersPage1 extends StatelessWidget {
  final AuthRepository authRepository;
  final int flowersNumber;
  final String flowersTipps;
  const FlowersPage1(
      {super.key, required this.flowersNumber, required this.flowersTipps, required this.authRepository});

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
                    flowersTipps,
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
                                builder: (context) => FlowersPage(
                                  authRepository: authRepository,
                                ),
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
                                  if (flowersNumber == 1) {
                                    // wir befinden uns auf Regelseite 1
                                    return FlowersPage1(
                                      authRepository: authRepository,
                                      flowersNumber: 2,
                                      flowersTipps:
                                          "Blumen im Garten pflanzen: Pflanze gemeinsam Blumen im Garten. Dies gibt dem Kind die Möglichkeit, den Wachstumsprozess zu beobachten und die Pflege von Pflanzen zu lernen.",
                                    );
                                  } else if (flowersNumber == 2) {
                                    // wir befinden uns auf Regelseite 2
                                    return FlowersPage1(
                                      authRepository: authRepository,
                                      flowersNumber: 3,
                                      flowersTipps:
                                          "Blumenmalerei und Bastelprojekte: Lass das Kind Blumen malen oder basteln. Verwende dabei verschiedene Materialien wie Farben, Papier, Stoff oder Naturmaterialien. Dies fördert die künstlerischen Fähigkeiten und das Verständnis für Blumenstrukturen.",
                                    );
                                  } else if (flowersNumber == 3) {
                                    // wir befinden uns auf Regelseite 3
                                    return FlowersPage1(
                                      authRepository: authRepository,
                                      flowersNumber: 4,
                                      flowersTipps:
                                          "Geschichten über Blumen: Erzähle Geschichten über Blumen und ihre Bedeutung in der Natur. Betone, wie Blumen für Bienen wichtig sind und wie sie bei der Bestäubung helfen.",
                                    );
                                  } else {
                                    // wir befinden uns auf Regelseite 4
                                    return MainSelectionPage(
                                      authRepository: authRepository,
                                    );
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
                  MaterialPageRoute(builder: (context) => MenuPage(authRepository: authRepository,)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
