import 'package:family/src/common/continue_back_row.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:flutter/material.dart';

class RegulatePage1 extends StatelessWidget {
  final int rulesNumber;
  final String regulateTipps;
  const RegulatePage1(
      {super.key, required this.regulateTipps, required this.rulesNumber});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        showBackButton: false,
        content: [
          Text(
            // Tipp Inhalt
            regulateTipps,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 100),
          ContinueBackRow(
            onPressedBack: () {
// gehe eins zurueck
              Navigator.pop(context);
            },
            onPressedForward: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    if (rulesNumber == 1) {
// wir befinden uns auf Regelseite 1
                      return const RegulatePage1(
                        rulesNumber: 2,
                        regulateTipps:
                            "Regelspiele: Entwickle Spiele, die die Regeln integrieren. Dies könnte beispielsweise ein Aufräumspiel sein, bei dem das Kind lernen kann, seine Spielsachen ordentlich wegzuräumen.",
                      );
                    } else if (rulesNumber == 2) {
// wir befinden uns auf Regelseite 2
                      return const RegulatePage1(
                        rulesNumber: 3,
                        regulateTipps:
                            "Rollenspiele: Spiele Rollenspiele, bei denen das Kind verschiedene Rollen übernimmt und die Regeln in diesen Situationen anwendet. Dies fördert das Verständnis und die praktische Anwendung.",
                      );
                    } else if (rulesNumber == 3) {
// wir befinden uns auf Regelseite 3
                      return const RegulatePage1(
                        rulesNumber: 4,
                        regulateTipps:
                            "Positive Verstärkung und Lob: Lob und positive Verstärkung sind entscheidend. Anerkenne und belohne das Kind, wenn es die Regeln befolgt, um positive Verhaltensweisen zu verstärken.",
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
