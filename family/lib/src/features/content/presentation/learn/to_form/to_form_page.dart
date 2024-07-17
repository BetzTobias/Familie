import 'package:family/src/common/continue_back_row.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/learn/learn.dart';
import 'package:family/src/features/content/presentation/learn/to_form/to_form_page1.dart';
import 'package:flutter/material.dart';

class ToFormPage extends StatelessWidget {
  const ToFormPage({super.key});

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
                'Das Formen lernen mit kleine Kinder kann durch kreative und interaktive Aktivitäten erfolgen. Hier sind einige Tipps, wie du Formen auf eine leicht verständliche Weise vermitteln kannst.',
                style: TextStyle(
                  fontSize: 18,
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
                      builder: (context) => const LearnPage(),
                    ),
                  );
                },
                onPressedForward: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ToFormPage1(
                        formNumber: 1,
                        formTipps:
                            'Alltägliche Objekte: Zeige dem Kind alltägliche Gegenstände mit verschiedenen Formen. Zum Beispiel: "Schau, die Uhr hat einen runden Kreis".',
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
