import 'package:family/src/common/continue_back_row.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/hygiene/wash/wash_page.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:flutter/material.dart';

class WashPage1 extends StatelessWidget {
  final int washNumber;
  final String washTipps;
  const WashPage1(
      {super.key, required this.washNumber, required this.washTipps});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        showBackButton: false,
        content: [
          Text(
            washTipps,
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
                  builder: (context) => const WashPage(),
                ),
              );
            },
            onPressedForward: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    if (washNumber == 1) {
// wir befinden uns auf Washseite 1
                      return const WashPage1(
                        washNumber: 2,
                        washTipps:
                            "Belohnungssystem einführen: Führe ein Belohnungssystem ein, bei dem das Kind für regelmäßiges und gründliches Waschen kleine Belohnungen erhält.",
                      );
                    } else if (washNumber == 2) {
// wir befinden uns auf Washseite 2
                      return const WashPage1(
                        washNumber: 3,
                        washTipps:
                            "Positive Verstärkung: Lob und positive Verstärkung sind entscheidend. Zeige deine Freude, wenn das Kind eigenständig die Hände wäscht, und betone die Bedeutung von Sauberkeit.",
                      );
                    } else {
// wir befinden uns auf Washseite 3
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
