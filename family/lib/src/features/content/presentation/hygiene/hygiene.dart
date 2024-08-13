import 'package:family/src/common/primary_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/hygiene/brush_teeth/brush_teeth_page.dart';
import 'package:family/src/features/content/presentation/hygiene/toilet_training/toilet_training_page.dart';
import 'package:family/src/features/content/presentation/hygiene/wash/wash_page.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

class HygienePage extends StatelessWidget {
  const HygienePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        content: [
          const SizedBox(height: 50),
          PrimaryButton(context, 'Zähne putzen', () async {
            await FirebaseAnalytics.instance.logEvent(name: 'zähne putzen');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BrushTeethPage(),
              ),
            );
          }),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Toilettengang', () async {
            await FirebaseAnalytics.instance.logEvent(name: 'toilettengang');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ToiletTrainingPage(),
              ),
            );
          }),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Waschen', () async {
            await FirebaseAnalytics.instance.logEvent(name: 'waschen');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const WashPage(),
              ),
            );
          }),
        ],
      ),
    );
  }
}
