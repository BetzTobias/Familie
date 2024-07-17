import 'package:family/src/common/primary_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/logical_thinking/logical_thinking_page0.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:flutter/material.dart';

class LogicalThinkingPage extends StatelessWidget {
  const LogicalThinkingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        content: [
          const SizedBox(height: 50),
          PrimaryButton(context, 'Formen der Größe nach Sortieren', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LogicalThinkingPage0(),
              ),
            );
          }),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
