import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/entertainment/entertainment.dart';
import 'package:family/src/features/content/presentation/hygiene/hygiene.dart';
import 'package:family/src/features/content/presentation/learn/learn.dart';
import 'package:family/src/features/content/presentation/logical_thinking/logical_thinking.dart';
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
      child: Stack(
        children: [
          Positioned(
            top: 100,
            left: 5,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MenuPage()),
                );
              },
              child: Column(
                children: [
                  Image.asset('assets/Menue.png'),
                ],
              ),
            ),
          ),
          Positioned(
            top: 215,
            left: 5,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LearnPage()),
                );
              },
              child: Column(
                children: [
                  Image.asset('assets/learn.png'),
                ],
              ),
            ),
          ),
          Positioned(
            top: 180,
            left: 180,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HygienePage()),
                );
              },
              child: Column(
                children: [
                  Image.asset('assets/hygiene.png'),
                ],
              ),
            ),
          ),
          Positioned(
            top: 380,
            left: 5,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EntertainmentPage()),
                );
              },
              child: Column(
                children: [
                  Image.asset('assets/entertainment.png'),
                ],
              ),
            ),
          ),
          Positioned(
            top: 370,
            left: 180,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const NaturePage()),
                );
              },
              child: Column(
                children: [
                  Image.asset('assets/nature.png'),
                ],
              ),
            ),
          ),
          Positioned(
            top: 520,
            left: 5,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const StoryPage()),
                );
              },
              child: Column(
                children: [
                  Image.asset('assets/story_bags.png'),
                ],
              ),
            ),
          ),
          Positioned(
            top: 490,
            left: 130,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LogicalThinkingPage()),
                );
              },
              child: Column(
                children: [
                  Image.asset('assets/logical_thinking.png'),
                ],
              ),
            ),
          ),
          Positioned(
            top: 690,
            left: 90,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const UnderstandingPage()),
                );
              },
              child: Column(
                children: [
                  Image.asset('assets/understanding.png'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
