import 'package:family/src/common/continue_back_row.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/learn/learn.dart';
import 'package:family/src/features/content/presentation/learn/learn_colors/learn_colors__page1.dart';
import 'package:flutter/material.dart';

class LearnColorsPage extends StatelessWidget {
  const LearnColorsPage({super.key});

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
                'Das Lernen von Farben mit unseren kleinen Sprösslingen kann durch kreative und spielerische Aktivitäten erfolgen. Hier sind einige Tipps, wie du Farben auf eine leicht verständliche Weise vermitteln kannst:',
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
                      builder: (context) => const LearnColorsPage1(
                        colorsNumber: 1,
                        colorsTipps:
                            'Bunte Gegenstände: Zeige deinem Kind verschiedene bunte Gegenstände wie Spielzeug, Kleidung oder Früchte. Benenne dabei die Farben deutlich. "Schau, das ist eine rote Erdbeere" oder "Dieses Auto ist blau".',
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
