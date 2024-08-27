import 'package:family/src/common/continue_back_row.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/nature/flowers/flowers_page1.dart';
import 'package:family/src/features/content/presentation/nature/nature.dart';
import 'package:flutter/material.dart';

class FlowersPage extends StatelessWidget {
  const FlowersPage({super.key});

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
                'Indem du spielerische Elemente in das Lernen über Blumen integrierst, kannst du die Neugier und das Verständnis des Kindes fördern. Dies ermöglicht es ihnen, die Schönheit und Vielfalt der Blumen in der Natur zu schätzen. Hier sind einige Tipps:',
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
                      builder: (context) => const FlowersPage1(
                        flowersNumber: 1,
                        flowersTipps:
                            'Blumen Memory Spiel: Spiele ein Memory-Spiel mit Karten, auf denen verschiedene Blumen abgebildet sind. Dies fördert die Konzentration und das visuelle Gedächtnis des Kindes.',
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
