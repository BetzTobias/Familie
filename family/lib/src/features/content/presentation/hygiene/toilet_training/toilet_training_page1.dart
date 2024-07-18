import 'package:family/src/common/continue_back_row.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/hygiene/toilet_training/toilet_training_page.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:flutter/material.dart';

class ToiletTrainingPage1 extends StatelessWidget {
  final int toiletNumber;
  final String toiletTipps;
  const ToiletTrainingPage1(
      {super.key, required this.toiletNumber, required this.toiletTipps});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        showBackButton: false,
        content: [
          Text(
            toiletTipps,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 100),
          ContinueBackRow(
            onPressedBack: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const ToiletTrainingPage(),
                ),
              );
            },
            onPressedForward: () {
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
          )
        ],
      ),
    );
  }
}
