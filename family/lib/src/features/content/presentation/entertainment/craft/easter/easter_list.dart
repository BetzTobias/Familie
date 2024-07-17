import 'package:family/src/common/primary_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:flutter/material.dart';

class EasterListPage extends StatelessWidget {
  const EasterListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        content: [
          const SizedBox(height: 50),
          PrimaryButton(context, 'Osterküken Eierbecher', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MainSelectionPage(),
              ),
            );
          }),
        ],
      ),
    );
  }
}
