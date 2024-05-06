import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/menu_page.dart';
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
            child: Image.asset('assets/learn.png'),
          ),
          Positioned(
            top: 180,
            left: 180,
            child: Image.asset('assets/hygiene.png'),
          ),
          Positioned(
            top: 380,
            left: 5,
            child: Image.asset('assets/entertainment.png'),
          ),
          Positioned(
            top: 370,
            left: 180,
            child: Image.asset('assets/nature.png'),
          ),
          Positioned(
            top: 520,
            left: 5,
            child: Image.asset('assets/story_bags.png'),
          ),
          Positioned(
            top: 490,
            left: 130,
            child: Image.asset('assets/logical_thinking.png'),
          ),
          Positioned(
            top: 690,
            left: 90,
            child: Image.asset('assets/understanding.png'),
          ),
        ],
      ),
    );
  }
}
