import 'package:family/src/common/primary_button.dart';
import 'package:family/src/features/authentication/presentation/settings/settings_page.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/categorie.dart';
import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        content: [
          const SizedBox(height: 50),
          PrimaryButton(context, 'Hauptmenü', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MainSelectionPage(),
              ),
            );
          }),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Kategorien', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CategoriesPage(),
              ),
            );
          }),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Einstellungen', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SettingsPage(),
              ),
            );
          }),
        ],
      ),
    );
  }
}
