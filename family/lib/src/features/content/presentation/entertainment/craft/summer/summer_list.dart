import 'package:family/src/common/primary_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/entertainment/craft/summer/egg_carton_sharks.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:flutter/material.dart';

class SummerListPage extends StatelessWidget {
  const SummerListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        content: [
          const SizedBox(height: 50),
          PrimaryButton(context, 'Haie aus Eierkarton', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const EggCartonSharksPage(),
              ),
            );
          }),
        ],
      ),
    );
  }
}
