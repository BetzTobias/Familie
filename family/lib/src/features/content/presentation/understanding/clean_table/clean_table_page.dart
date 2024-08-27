import 'package:family/src/common/continue_back_row.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/understanding/clean_table/clean_table_page1.dart';
import 'package:family/src/features/content/presentation/understanding/understanding.dart';
import 'package:flutter/material.dart';

class CleanTablePage extends StatelessWidget {
  const CleanTablePage({super.key});

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
                'Es ist wichtig, das Aufräumen als positive und normale Tätigkeit zu präsentieren. Indem du spielerische Elemente einfügst, wird das Aufräumen des Tisches für Kinder nicht nur leicht verständlich, sondern auch angenehmer.Hier sind einige Tipps:',
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
                      builder: (context) => const CleanTablePage1(
                        cleanTipps:
                            'Lustige Aufräumlieder: Erfinde oder suche nach lustigen Aufräumliedern. Diese können den Prozess unterhaltsamer gestalten und dem Kind helfen, sich besser zu engagieren.',
                        cleanNumber: 1,
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
