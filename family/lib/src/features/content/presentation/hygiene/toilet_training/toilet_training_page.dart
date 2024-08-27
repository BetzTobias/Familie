import 'package:family/src/common/continue_back_row.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/hygiene/hygiene.dart';
import 'package:family/src/features/content/presentation/hygiene/toilet_training/toilet_training_page1.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

class ToiletTrainingPage extends StatelessWidget {
  const ToiletTrainingPage({super.key});

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
                'Den Toilettengang spielerisch und leicht verständlich zu gestalten, ist wichtig, um Kindern die Selbstständigkeit auf diesem Gebiet beizubringen. Hier sind einige Tipps:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 100),
              ContinueBackRow(
                onPressedBack: () async{
                   await FirebaseAnalytics.instance
                              .logEvent(name: 'toilette');
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
                      builder: (context) => const ToiletTrainingPage1(
                        toiletTipps:
                            'Kindgerechte Toilettenausstattung: Verwende eine kinderfreundliche Toilettenbrille und einen Tritthocker, damit das Kind leicht auf die Toilette steigen kann. Stelle sicher, dass alles in kindgerechten Farben und Formen gestaltet ist.',
                        toiletNumber: 1,
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
