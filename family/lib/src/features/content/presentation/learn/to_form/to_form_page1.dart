import 'package:family/src/common/menue_button.dart';
import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/learn/to_form/to_form_page.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:family/src/features/content/presentation/menu_page.dart';
import 'package:flutter/material.dart';

class ToFormPage1 extends StatelessWidget {
  final AuthRepository authRepository;
  final int formNumber;
  final String formTipps;
  const ToFormPage1(
      {super.key, required this.formNumber, required this.formTipps, required this.authRepository});

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
                    formTipps,
                    style: const TextStyle(
                      fontSize: 18,
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
                                builder: (context) => ToFormPage(authRepository: authRepository,),
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
                                  if (formNumber == 1) {
                                    // wir befinden uns auf Regelseite 1
                                    return ToFormPage1(
                                      authRepository: authRepository,
                                      formNumber: 2,
                                      formTipps:
                                          "Formen benennen: Während du mit dem Kind spielst oder durch die Umgebung gehst, benenne die Formen von Gegenständen, die ihr seht. Das Fenster hat die Form eines Quadrats oder Der Tisch hat eine rechteckige Oberfläche.",
                                    );
                                  } else if (formNumber == 2) {
                                    // wir befinden uns auf Regelseite 2
                                    return ToFormPage1(
                                      authRepository: authRepository,
                                      formNumber: 3,
                                      formTipps:
                                          "Formen in der Natur: Bei Spaziergängen im Freien oder im Garten kann man Formen in der Natur entdecken. Kreise können beispielsweise Blumen oder Steine sein, während Bäume oder Schilder rechteckige Formen haben können.",
                                    );
                                  } else if (formNumber == 3) {
                                    // wir befinden uns auf Regelseite 3
                                    return ToFormPage1(
                                      authRepository: authRepository,
                                      formNumber: 4,
                                      formTipps:
                                          "Sandkasten oder Teig formen: Nutze Sand oder Modelliermasse, um verschiedene Formen zu erstellen. Kinder können Spaß daran haben, mit den Händen zu formen und dabei verschiedene Formen zu entdecken.",
                                    );
                                  } else {
                                    // wir befinden uns auf Regelseite 4
                                    return MainSelectionPage(authRepository: authRepository,);
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
