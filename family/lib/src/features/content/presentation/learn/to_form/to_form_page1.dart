import 'package:family/src/common/continue_back_row.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/learn/to_form/to_form_page.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:flutter/material.dart';

class ToFormPage1 extends StatelessWidget {
  final int formNumber;
  final String formTipps;
  const ToFormPage1(
      {super.key, required this.formNumber, required this.formTipps});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        showBackButton: false,
        content: [
          Text(
            formTipps,
            style: const TextStyle(
              fontSize: 18,
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
                  builder: (context) => const ToFormPage(),
                ),
              );
            },
            onPressedForward: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    if (formNumber == 1) {
// wir befinden uns auf Regelseite 1
                      return const ToFormPage1(
                        formNumber: 2,
                        formTipps:
                            "Formen benennen: Während du mit dem Kind spielst oder durch die Umgebung gehst, benenne die Formen von Gegenständen, die ihr seht. Das Fenster hat die Form eines Quadrats oder Der Tisch hat eine rechteckige Oberfläche.",
                      );
                    } else if (formNumber == 2) {
// wir befinden uns auf Regelseite 2
                      return const ToFormPage1(
                        formNumber: 3,
                        formTipps:
                            "Formen in der Natur: Bei Spaziergängen im Freien oder im Garten kann man Formen in der Natur entdecken. Kreise können beispielsweise Blumen oder Steine sein, während Bäume oder Schilder rechteckige Formen haben können.",
                      );
                    } else if (formNumber == 3) {
// wir befinden uns auf Regelseite 3
                      return const ToFormPage1(
                        formNumber: 4,
                        formTipps:
                            "Sandkasten oder Teig formen: Nutze Sand oder Modelliermasse, um verschiedene Formen zu erstellen. Kinder können Spaß daran haben, mit den Händen zu formen und dabei verschiedene Formen zu entdecken.",
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
