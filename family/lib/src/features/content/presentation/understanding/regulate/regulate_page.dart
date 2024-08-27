import 'package:family/src/common/continue_back_row.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/understanding/regulate/regulate_page1.dart';
import 'package:family/src/features/content/presentation/understanding/understanding.dart';
import 'package:flutter/material.dart';

class RegulatePage extends StatelessWidget {
  const RegulatePage({super.key});

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
                'Das Beibringen von Regeln an Kinder kann durch spielerische und leicht verständliche Ansätze erfolgen. Es ist wichtig, die Regeln klar, einfach und positiv zu formulieren. Kinder lernen am besten, wenn sie die Gründe hinter den Regeln verstehen.Hier sind einige Tipps:',
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
                      builder: (context) => const UnderstandingPage(),
                    ),
                  );
                },
                onPressedForward: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegulatePage1(
                        regulateTipps:
                            'Regelgeschichten: Erzähle Geschichten, in denen die Regeln auf eine kindgerechte Weise erklärt werden. Verwende Charaktere oder Situationen, die für das Kind leicht nachvollziehbar sind.',
                        rulesNumber: 1,
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
