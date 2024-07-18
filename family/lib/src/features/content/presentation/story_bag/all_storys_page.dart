import 'package:family/src/common/primary_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:family/src/features/content/presentation/story_bag/little_red_riding_hood.dart';
import 'package:family/src/features/content/presentation/story_bag/story_bags.dart';
import 'package:family/src/features/content/presentation/story_bag/the_jungle_book.dart';
import 'package:flutter/material.dart';

class AllStorysPage extends StatelessWidget {
  const AllStorysPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        showMenuButton: false,
        backButtonDestination: const StoryPage(),
        content: [
          const SizedBox(height: 50),
          PrimaryButton(context, 'Das Dschungelbuch', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TheJungleBook(),
              ),
            );
          }),
          const SizedBox(height: 10),
          PrimaryButton(context, 'Rotkäppchen', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LittleRedRidingHood(),
              ),
            );
          }),
        ],
      ),
    );
  }
}
