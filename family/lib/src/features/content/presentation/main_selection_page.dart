import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/entertainment/entertainment.dart';
import 'package:family/src/features/content/presentation/hygiene/hygiene.dart';
import 'package:family/src/features/content/presentation/learn/learn.dart';
import 'package:family/src/features/content/presentation/logical_thinking/logical_thinking.dart';
import 'package:family/src/features/content/presentation/menu_item.dart';
import 'package:family/src/features/content/presentation/menu_page.dart';
import 'package:family/src/features/content/presentation/nature/nature.dart';
import 'package:family/src/features/content/presentation/story_bag/story_bags.dart';
import 'package:family/src/features/content/presentation/understanding/understanding.dart';
import 'package:flutter/material.dart';

class MainSelectionPage extends StatelessWidget {
  const MainSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 48,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const MenuPage()),
                    );
                  },
                  child: Image.asset(
                    'assets/Menue.png',
                  ),
                ),
              ),
              const Wrap(
                children: [
                  MenuItem(
                      destination: LearnPage(), imagePath: 'assets/learn.png'),
                  MenuItem(
                      destination: HygienePage(),
                      imagePath: 'assets/hygiene.png'),
                  MenuItem(
                      destination: EntertainmentPage(),
                      imagePath: 'assets/entertainment.png'),
                  MenuItem(
                      destination: NaturePage(),
                      imagePath: 'assets/nature.png'),
                  MenuItem(
                      destination: StoryPage(),
                      imagePath: 'assets/story_bags.png'),
                  MenuItem(
                      destination: LogicalThinkingPage(),
                      imagePath: 'assets/logical_thinking.png'),
                  MenuItem(
                      destination: UnderstandingPage(),
                      imagePath: 'assets/understanding.png'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
