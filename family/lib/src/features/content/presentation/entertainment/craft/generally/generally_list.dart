import 'package:family/src/common/primary_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/entertainment/craft/generally/kneading_soap.dart';
import 'package:family/src/features/content/presentation/entertainment/craft/generally/mucus.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:flutter/material.dart';

class GenerallyListPage extends StatelessWidget {
  const GenerallyListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        content: [
          const SizedBox(height: 50),
          PrimaryButton(context, 'Knetseife selber machen', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const KneadingSoapPage(),
              ),
            );
          }),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Schleim aus Duschgel und Stärke', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MucusPage(),
              ),
            );
          }),
        ],
      ),
    );
  }
}
