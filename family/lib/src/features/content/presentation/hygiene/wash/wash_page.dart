import 'package:family/src/common/continue_back_row.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/hygiene/hygiene.dart';
import 'package:family/src/features/content/presentation/hygiene/wash/wash_page1.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

class WashPage extends StatelessWidget {
  const WashPage({super.key});

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
                'Das Waschen kann für Kinder durch spielerische und kreative Methoden zu einer unterhaltsamen Gewohnheit werden.Indem du das Waschen mit Spaß verbindest, kannst du es für Kinder leicht verständlich machen und sie dazu ermutigen, diese wichtige Hygienemaßnahme als Teil ihrer täglichen Routine zu akzeptieren. Hier sind einige Tipps:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 100),
              ContinueBackRow(
                onPressedBack: () async {
                  await FirebaseAnalytics.instance.logEvent(name: 'waschen');
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
                      builder: (context) => const WashPage1(
                        washTipps:
                            'Wasch-Songs und Reime: Erfinde oder suche nach Wasch-Songs oder Reimen. Die Kinder können während des Waschens mitsingen oder sich die Lieder merken, um die empfohlene Dauer von mindestens 20 Sekunden einzuhalten.',
                        washNumber: 1,
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
