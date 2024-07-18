import 'package:family/src/common/primary_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:flutter/material.dart';

class SpringListPage extends StatelessWidget {
  const SpringListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        content: [
          const SizedBox(height: 50),
          PrimaryButton(context, 'Blumen aus Klopapeirrollen', () {
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
