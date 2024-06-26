import 'package:family/src/common/menue_button.dart';
import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/data/database_repository.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/learn/motorskills/motor_skills_page.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:family/src/features/content/presentation/menu_page.dart';
import 'package:flutter/material.dart';

class MotorSkillsPage2 extends StatelessWidget {
  final DatabaseRepository databaseRepository;
  final AuthRepository authRepository;
  final int skillsNumber;
  final String skillsTipps;
  const MotorSkillsPage2({
    super.key,
    required this.skillsNumber,
    required this.skillsTipps,
    required this.authRepository,
    required this.databaseRepository,
  });

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
                    skillsTipps,
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
                                builder: (context) => MotorSkillsPage(
                                  databaseRepository: databaseRepository,
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
                                  if (skillsNumber == 2) {
                                    // wir befinden uns auf Brushseite 1
                                    return MotorSkillsPage2(
                                      databaseRepository: databaseRepository,
                                      authRepository: authRepository,
                                      skillsNumber: 3,
                                      skillsTipps:
                                          "Grobmotorik üben: Lass dein Kind krabbeln, klettern oder balancieren. Draußen spielen, auf Spielplätzen herumtollen oder einfach im Garten herumlaufen hilft, die grobmotorischen Fähigkeiten zu entwicklen.",
                                    );
                                  } else if (skillsNumber == 3) {
                                    // wir befinden uns auf Brushseite 2
                                    return MotorSkillsPage2(
                                      databaseRepository: databaseRepository,
                                      authRepository: authRepository,
                                      skillsNumber: 4,
                                      skillsTipps:
                                          "Musik und Bewegung: Spiele Musik und ermutige das Kind, sich dazu zu bewegen. Einfache Tanzschritte, das Klatschen im Takt oder das Schwingen der Arme können die Koordination fördern.",
                                    );
                                  } else if (skillsNumber == 4) {
                                    // wir befinden uns auf Brushseite 3
                                    return MotorSkillsPage2(
                                      databaseRepository: databaseRepository,
                                      authRepository: authRepository,
                                      skillsNumber: 5,
                                      skillsTipps:
                                          "Gemeinsame Aktivitäten: Beteilige dich aktiv an den Aktivitäten des Kindes. Gemeinsame Spiele wie Simon sagt oder das Nachahmen von Tieren können die Koordination verbessern und die Kinder dazu ermutigen, sich zu bewegen.",
                                    );
                                  } else if (skillsNumber == 5) {
                                    // wir befinden uns auf Brushseite 4
                                    return MotorSkillsPage2(
                                      databaseRepository: databaseRepository,
                                      authRepository: authRepository,
                                      skillsNumber: 6,
                                      skillsTipps:
                                          "Geeignetes Spielzeug: Wähle Spielzeug aus, das die Motorik unterstützt. Bauklötze, Puzzles, Spielzeugautos oder einfache Musikinstrumente können dazu beitragen, die verschiedenen motorischen Fähigkeiten zu entwickeln.",
                                    );
                                  } else if (skillsNumber == 6) {
                                    // wir befinden uns auf Brushseite 5
                                    return MotorSkillsPage2(
                                      databaseRepository: databaseRepository,
                                      authRepository: authRepository,
                                      skillsNumber: 7,
                                      skillsTipps:
                                          "Alltägliche Aktivitäten nutzen: Integriere motorische Übungen in den Alltag, z.B. beim Anziehen, Essen oder Aufräumen. Lass das Kind selbstständig Aufgaben erledigen, um die Feinmotorik zu fördern.",
                                    );
                                  } else {
                                    // wir befinden uns auf Brushseite 6
                                    return MainSelectionPage(
                                      authRepository: authRepository,
                                      databaseRepository: databaseRepository,
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
                            databaseRepository: databaseRepository,
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
