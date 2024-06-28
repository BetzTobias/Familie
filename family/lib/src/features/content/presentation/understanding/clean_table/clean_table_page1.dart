import 'package:family/src/common/menue_button.dart';
import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:family/src/features/content/presentation/menu_page.dart';
import 'package:family/src/features/content/presentation/understanding/clean_table/clean_table_page.dart';
import 'package:flutter/material.dart';

class CleanTablePage1 extends StatelessWidget {
  final AuthRepository authRepository;
  final int cleanNumber;
  final String cleanTipps;
  const CleanTablePage1(
      {super.key, required this.cleanTipps, required this.cleanNumber, required this.authRepository});

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
                    cleanTipps,
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
                                builder: (context) => CleanTablePage(
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
                                  if (cleanNumber == 1) {
                                    // wir befinden uns auf Regelseite 1
                                    return CleanTablePage1(
                                      authRepository: authRepository,
                                      cleanNumber: 2,
                                      cleanTipps:
                                          "Aufräumspiel mit Timer: Verwende einen Timer und mache ein Spiel daraus. Das Kind kann versuchen, den Tisch schneller aufzuräumen, bevor der Timer abläuft.",
                                    );
                                  } else if (cleanNumber == 2) {
                                    // wir befinden uns auf Regelseite 2
                                    return CleanTablePage1(
                                      authRepository: authRepository,
                                      cleanNumber: 3,
                                      cleanTipps:
                                          "Belohnungssystem einführen: Führe ein Belohnungssystem ein, bei dem das Kind für erfolgreiches Aufräumen eine kleine Belohnung erhalten kann. Dies kann die Motivation steigern.",
                                    );
                                  } else if (cleanNumber == 3) {
                                    // wir befinden uns auf Regelseite 3
                                    return CleanTablePage1(
                                      authRepository: authRepository,
                                      cleanNumber: 4,
                                      cleanTipps:
                                          "Aufräumrennen: Spiele ein Aufräumrennen, bei dem das Kind gegen die Zeit oder andere Familienmitglieder antritt. Dies fördert Wettbewerbsgeist und Zusammenarbeit.",
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
                  MaterialPageRoute(
                      builder: (context) => MenuPage(
                            authRepository: authRepository,
                          )),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
