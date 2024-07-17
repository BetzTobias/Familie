import 'package:family/src/common/primary_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/entertainment/craft/autumn/autumn_list.dart';
import 'package:family/src/features/content/presentation/entertainment/craft/carnival/carnival_list.dart';
import 'package:family/src/features/content/presentation/entertainment/craft/easter/easter_list.dart';
import 'package:family/src/features/content/presentation/entertainment/craft/generally/generally_list.dart';
import 'package:family/src/features/content/presentation/entertainment/craft/spring/spring_list.dart';
import 'package:family/src/features/content/presentation/entertainment/craft/winter/winter_list.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:flutter/material.dart';

class CraftListPage extends StatelessWidget {
  const CraftListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        content: [
          const SizedBox(height: 50),
          PrimaryButton(context, 'Frühling', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SpringListPage(),
              ),
            );
          }),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Sommer', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SpringListPage(),
              ),
            );
          }),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Herbst', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AutumnListPage(),
              ),
            );
          }),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Winter', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const WinterListPage(),
              ),
            );
          }),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Fashing', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CarnivalListPage(),
              ),
            );
          }),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Ostern', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const EasterListPage(),
              ),
            );
          }),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Allgemein', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GenerallyListPage(),
              ),
            );
          }),
        ],
      ),
    );
  }
}
