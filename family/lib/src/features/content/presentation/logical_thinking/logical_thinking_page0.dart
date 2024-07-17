import 'package:family/src/common/continue_back_row.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/logical_thinking/logical_thinking.dart';
import 'package:family/src/features/content/presentation/logical_thinking/logical_thinking_page1.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:flutter/material.dart';

class LogicalThinkingPage0 extends StatelessWidget {
  const LogicalThinkingPage0({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        showBackButton: false,
        content: [
          const Text(
            'Indem du spielerische Elemente in die Aktivitäten einfügst, wird das Sortieren von Formen nach Größe für Kinder nicht nur leicht verständlich, sondern auch unterhaltsam. Hier sind einige Tipps:',
            style: TextStyle(
              fontSize: 17,
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
                  builder: (context) => const LogicalThinkingPage(),
                ),
              );
            },
            onPressedForward: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LogicalThinkingPage1(
                    logicNumber: 1,
                    logicTipps:
                        'Formen mit Händen und Füßen nachahmen: Lass das Kind Formen mit den Händen oder Füßen nachahmen. Zum Beispiel können sie versuchen, einen großen Kreis mit ihren Armen zu machen und einen kleinen Kreis mit ihren Fingern.',
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
