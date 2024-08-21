import 'package:family/src/common/continue_back_row.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/learn/learn.dart';
import 'package:family/src/features/content/presentation/learn/motorskills/motor_skills_page2.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

class MotorSkillsPage extends StatelessWidget {
  const MotorSkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        showBackButton: false,
        content: [
          const Text(
            'Spiel und Spaß: Integriere motorische Übungen in spielerische Aktivitäten. Spiele wie Fangen, Verstecken oder Ballspiele können die Motorik verbessern, während Kinder Spaß haben.',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 100),
          ContinueBackRow(
            onPressedBack: () async {
              await FirebaseAnalytics.instance.logEvent(name: 'motorik tipps');
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LearnPage(),
                ),
              );
            },
            onPressedForward: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const MotorSkillsPage2(
                    skillsNumber: 2,
                    skillsTipps:
                        'Feinmotorik fördern: Biete Aktivitäten an, die die Fingerfertigkeiten verbessern, wie z.B. Malen, Basteln oder das Spielen mit Bausteinen. Diese Aktivitäten stärken die Handmuskulatur und fördern die Hand-Augen-Koordination.',
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
