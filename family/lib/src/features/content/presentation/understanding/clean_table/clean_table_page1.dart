import 'package:family/src/common/continue_back_row.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:family/src/features/content/presentation/understanding/clean_table/clean_table_page.dart';
import 'package:flutter/material.dart';

class CleanTablePage1 extends StatelessWidget {
  final int cleanNumber;
  final String cleanTipps;
  const CleanTablePage1(
      {super.key, required this.cleanTipps, required this.cleanNumber});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        showBackButton: false,
        content: [
          Text(
            cleanTipps,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 100),
          ContinueBackRow(
            onPressedBack: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const CleanTablePage(),
                ),
              );
            },
            onPressedForward: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    if (cleanNumber == 1) {
// wir befinden uns auf Regelseite 1
                      return const CleanTablePage1(
                        cleanNumber: 2,
                        cleanTipps:
                            "Aufräumspiel mit Timer: Verwende einen Timer und mache ein Spiel daraus. Das Kind kann versuchen, den Tisch schneller aufzuräumen, bevor der Timer abläuft.",
                      );
                    } else if (cleanNumber == 2) {
// wir befinden uns auf Regelseite 2
                      return const CleanTablePage1(
                        cleanNumber: 3,
                        cleanTipps:
                            "Belohnungssystem einführen: Führe ein Belohnungssystem ein, bei dem das Kind für erfolgreiches Aufräumen eine kleine Belohnung erhalten kann. Dies kann die Motivation steigern.",
                      );
                    } else if (cleanNumber == 3) {
// wir befinden uns auf Regelseite 3
                      return const CleanTablePage1(
                        cleanNumber: 4,
                        cleanTipps:
                            "Aufräumrennen: Spiele ein Aufräumrennen, bei dem das Kind gegen die Zeit oder andere Familienmitglieder antritt. Dies fördert Wettbewerbsgeist und Zusammenarbeit.",
                      );
                    } else {
// wir befinden uns auf Regelseite 4
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
