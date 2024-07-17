import 'package:family/src/common/primary_button.dart';
import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/menu_template_page.dart';
import 'package:family/src/features/content/presentation/story_bag/all_storys_page.dart';
import 'package:flutter/material.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: MenuTemplatePage(
        content: [
          const SizedBox(height: 50),
          PrimaryButton(context, 'Geschichtensäckchen', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AllStorysPage(),
              ),
            );
          }),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
