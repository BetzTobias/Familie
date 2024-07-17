import 'package:family/src/common/primary_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/entertainment/all_songs_page.dart';
import 'package:family/src/features/content/presentation/entertainment/bake/recipe_list.dart';
import 'package:family/src/features/content/presentation/entertainment/craft/craft_list.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:flutter/material.dart';

class EntertainmentPage extends StatelessWidget {
  const EntertainmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        content: [
          const SizedBox(height: 50),
          PrimaryButton(context, 'Basteln', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CraftListPage(),
              ),
            );
          }),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Backen', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const RecipeList(),
              ),
            );
          }),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Lieder', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AllSongsPage(),
              ),
            );
          }),
        ],
      ),
    );
  }
}
