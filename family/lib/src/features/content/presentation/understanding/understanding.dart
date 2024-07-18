import 'package:family/src/common/primary_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:family/src/features/content/presentation/understanding/clean_table/clean_table_page.dart';
import 'package:family/src/features/content/presentation/understanding/regulate/regulate_page.dart';
import 'package:flutter/material.dart';

class UnderstandingPage extends StatelessWidget {
  const UnderstandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        content: [
          const SizedBox(height: 50),
          PrimaryButton(context, 'Regeln', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const RegulatePage(),
              ),
            );
          }),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Tisch aufräumen', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CleanTablePage(),
              ),
            );
          }),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
