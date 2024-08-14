import 'package:family/src/common/continue_back_row.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/hygiene/brush_teeth/brush_teeth_page1.dart';
import 'package:family/src/features/content/presentation/hygiene/hygiene.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

class BrushTeethPage extends StatelessWidget {
  const BrushTeethPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Das Zähneputzen kann für Kinder zu einer unterhaltsamen und lehrreichen Erfahrung gemacht werden, um die Routine angenehm und verständlich zu gestalten. Hier sind einige Tipps:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 100),
              ContinueBackRow(
                onPressedBack: () async {
                   await FirebaseAnalytics.instance
                              .logEvent(name: 'hygiene');
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HygienePage(),
                    ),
                  );
                },
                onPressedForward: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BrushTeethPage1(
                        brushTipps:
                            'Kinderfreundliche Zahnbürste und Zahnpasta: Verwende eine weiche, kinderfreundliche Zahnbürste und eine Kinderzahnpasta mit angenehmem Geschmack. Lass dein Kind die Zahnbürste und Pasta selbst aussuchen, um die Motivation zu steigern.',
                        brushNumber: 1,
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
