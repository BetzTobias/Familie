import 'package:family/src/common/primary_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/entertainment/craft/carnival/carnival_figure.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:flutter/material.dart';

class CarnivalListPage extends StatelessWidget {
  const CarnivalListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        content: [
          const SizedBox(height: 50),
          PrimaryButton(context, 'Faschingsfigur mit Krepppapier', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CarnivalFigurePage(),
              ),
            );
          }),
        ],
      ),
    );
  }
}
