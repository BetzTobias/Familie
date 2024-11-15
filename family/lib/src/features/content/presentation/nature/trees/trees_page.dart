import 'package:family/src/common/continue_back_row.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/nature/nature.dart';
import 'package:family/src/features/content/presentation/nature/trees/trees_page1.dart';
import 'package:flutter/material.dart';

class TreesPage extends StatelessWidget {
  const TreesPage({super.key});

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
                'Das Beibringen über Bäume der Natur kann für Kinder durch spielerische und kreative Methoden unterhaltsam und leicht verständlich gestaltet werden. Indem du spielerische Elemente in das Lernen über Bäume integrierst, kannst du die Neugier und das Verständnis des Kindes fördern. Dies ermöglicht es ihnen, die Schönheit und Bedeutung der Bäume in der Natur zu schätzen. Hier sind einige Tipps:',
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
                      builder: (context) => const TreesPage1(
                        treesNumber: 1,
                        treesTipps:
                            'Baumarten entdecken: Gehe mit dem Kind nach draußen und erkunde gemeinsam verschiedene Baumarten. Zeige auf unterschiedliche Blätter, Rinden und Formen der Bäume.',
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
