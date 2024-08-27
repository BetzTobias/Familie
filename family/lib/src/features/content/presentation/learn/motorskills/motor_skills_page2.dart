import 'package:family/src/common/continue_back_row.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/learn/motorskills/motor_skills_page.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:flutter/material.dart';

class MotorSkillsPage2 extends StatelessWidget {
  final int skillsNumber;
  final String skillsTipps;
  const MotorSkillsPage2(
      {super.key, required this.skillsNumber, required this.skillsTipps});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        showBackButton: false,
        content: [
          Text(
            skillsTipps,
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
                  builder: (context) => const MotorSkillsPage(),
                ),
              );
            },
            onPressedForward: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    if (skillsNumber == 2) {
// wir befinden uns auf Brushseite 1
                      return const MotorSkillsPage2(
                        skillsNumber: 3,
                        skillsTipps:
                            "Grobmotorik üben: Lass dein Kind krabbeln, klettern oder balancieren. Draußen spielen, auf Spielplätzen herumtollen oder einfach im Garten herumlaufen hilft, die grobmotorischen Fähigkeiten zu entwicklen.",
                      );
                    } else if (skillsNumber == 3) {
// wir befinden uns auf Brushseite 2
                      return const MotorSkillsPage2(
                        skillsNumber: 4,
                        skillsTipps:
                            "Musik und Bewegung: Spiele Musik und ermutige das Kind, sich dazu zu bewegen. Einfache Tanzschritte, das Klatschen im Takt oder das Schwingen der Arme können die Koordination fördern.",
                      );
                    } else if (skillsNumber == 4) {
// wir befinden uns auf Brushseite 3
                      return const MotorSkillsPage2(
                        skillsNumber: 5,
                        skillsTipps:
                            "Gemeinsame Aktivitäten: Beteilige dich aktiv an den Aktivitäten des Kindes. Gemeinsame Spiele wie Simon sagt oder das Nachahmen von Tieren, können die Koordination verbessern und die Kinder dazu ermutigen, sich zu bewegen.",
                      );
                    } else if (skillsNumber == 5) {
// wir befinden uns auf Brushseite 4
                      return const MotorSkillsPage2(
                        skillsNumber: 6,
                        skillsTipps:
                            "Geeignetes Spielzeug: Wähle Spielzeug aus, das die Motorik unterstützt. Bauklötze, Puzzles, Spielzeugautos oder einfache Musikinstrumente können dazu beitragen, die verschiedenen motorischen Fähigkeiten zu entwickeln.",
                      );
                    } else if (skillsNumber == 6) {
// wir befinden uns auf Brushseite 5
                      return const MotorSkillsPage2(
                        skillsNumber: 7,
                        skillsTipps:
                            "Alltägliche Aktivitäten nutzen: Integriere motorische Übungen in den Alltag, z.B. beim Anziehen, Essen oder Aufräumen. Lass das Kind selbstständig Aufgaben erledigen, um die Feinmotorik zu fördern.",
                      );
                    } else {
// wir befinden uns auf Brushseite 6
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
