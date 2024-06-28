import 'package:family/src/common/menue_button.dart';
import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/hygiene/wash/wash_page.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:family/src/features/content/presentation/menu_page.dart';
import 'package:flutter/material.dart';

class WashPage1 extends StatelessWidget {
  final AuthRepository authRepository;
  final int washNumber;
  final String washTipps;
  const WashPage1(
      {super.key, required this.washNumber, required this.washTipps, required this.authRepository});

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
                    washTipps,
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
                                builder: (context) => WashPage(authRepository: authRepository,),
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
                                  if (washNumber == 1) {
                                    // wir befinden uns auf Washseite 1
                                    return WashPage1(
                                      authRepository: authRepository,
                                      washNumber: 2,
                                      washTipps:
                                          "Belohnungssystem einführen: Führe ein Belohnungssystem ein, bei dem das Kind für regelmäßiges und gründliches Waschen kleine Belohnungen erhält.",
                                    );
                                  } else if (washNumber == 2) {
                                    // wir befinden uns auf Washseite 2
                                    return WashPage1(
                                      authRepository: authRepository,
                                      washNumber: 3,
                                      washTipps:
                                          "Positive Verstärkung: Lob und positive Verstärkung sind entscheidend. Zeige deine Freude, wenn das Kind eigenständig die Hände wäscht, und betone die Bedeutung von Sauberkeit.",
                                    );
                                  } else {
                                    // wir befinden uns auf Washseite 3
                                    return MainSelectionPage(
                                        authRepository: authRepository);
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
