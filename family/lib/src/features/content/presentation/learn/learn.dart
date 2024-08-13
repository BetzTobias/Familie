import 'package:family/src/common/primary_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/learn/learn_colors/learn_colors_page.dart';
import 'package:family/src/features/content/presentation/learn/motorskills/motor_skills_page.dart';
import 'package:family/src/features/content/presentation/learn/to_form/to_form_page.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(content: [
        const SizedBox(height: 50),
        PrimaryButton(context, 'Motorik', () async {
          await FirebaseAnalytics.instance.logEvent(name: 'motorik');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MotorSkillsPage(),
            ),
          );
        }),
        const SizedBox(height: 10),
        PrimaryButton(context, 'Farben', () async {
          await FirebaseAnalytics.instance.logEvent(name: 'farben');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LearnColorsPage(),
            ),
          );
        }),
        const SizedBox(height: 10),
        PrimaryButton(context, 'Formen', () async {
          await FirebaseAnalytics.instance.logEvent(name: 'formen');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ToFormPage(),
            ),
          );
        }),
      ]),
    );
  }
}
