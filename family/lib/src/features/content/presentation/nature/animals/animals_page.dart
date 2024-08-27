import 'package:family/src/common/continue_back_row.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/nature/animals/animals_page1.dart';
import 'package:family/src/features/content/presentation/nature/nature.dart';
import 'package:flutter/material.dart';

class AnimalsPage extends StatelessWidget {
  const AnimalsPage({super.key});

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
                'Das Beibringen über Tiere der Natur kann für Kinder auf spielerische Weise durch Erkundung, Spiele und kreative Aktivitäten erfolgen.Durch die Kombination von Spielen, kreativen Aktivitäten und praktischen Erfahrungen wird das Lernen über Tiere der Natur für Kinder spielerisch und leicht verständlich. Hier sind einige Tipps:',
                style: TextStyle(
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
                      builder: (context) => const NaturePage(),
                    ),
                  );
                },
                onPressedForward: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimalsPage1(
                        animalsNumber: 1,
                        animalsTipps:
                            'Tierbücher und Geschichten: Lies gemeinsam mit dem Kind Bücher über Tiere. Es gibt viele illustrierte Bücher und Geschichten, die kindgerechte Informationen über verschiedene Tiere vermitteln.',
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
