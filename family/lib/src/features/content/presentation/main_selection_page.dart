import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/categories_page.dart';
import 'package:flutter/material.dart';

class MainSelectionPage extends StatelessWidget {
  const MainSelectionPage({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: Stack(
        children: [
          Positioned(
            top: 50,
            left: 50,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => CategoriesPage(key: null,)),
                );
              },
              child: Column(
                children: [
                  Image.asset('assets/categories.png'),
                  const Text('Categories')
                ],
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 150,
            child: Image.asset('assets/learn.png'),
          ),
          Positioned(
            top: 250,
            left: 250,
            child: Image.asset('assets/hygiene.png'),
          ),
          Positioned(
            top: 250,
            left: 250,
            child: Image.asset('assets/entertainment.png'),
          ),
          Positioned(
            top: 250,
            left: 250,
            child: Image.asset('assets/nature.png'),
          ),
          Positioned(
            top: 250,
            left: 250,
            child: Image.asset('assets/story_bags.png'),
          ),
          Positioned(
            top: 250,
            left: 250,
            child: Image.asset('assets/logical_thinking.png'),
          ),
          Positioned(
            top: 250,
            left: 250,
            child: Image.asset('assets/understanding.png'),
          ),
        ],
      ),
    );
  }
}
