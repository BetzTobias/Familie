import 'package:family/src/data/auth_repository.dart';
import 'package:family/src/data/database_repository.dart';
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
  final DatabaseRepository databaseRepository;
  final AuthRepository authRepository;
  const MainSelectionPage(
      {super.key,
      required this.authRepository,
      required this.databaseRepository});

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
                  MaterialPageRoute(
                      builder: (context) => MenuPage(
                            authRepository: authRepository,
                            databaseRepository: databaseRepository,
                          )),
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
                  MaterialPageRoute(
                      builder: (context) => LearnPage(databaseRepository: databaseRepository,
                            authRepository: authRepository,
                          )),
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
                  MaterialPageRoute(
                      builder: (context) => HygienePage(
                            databaseRepository: databaseRepository,
                            authRepository: authRepository,
                          )),
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
                      builder: (context) => EntertainmentPage(
                            databaseRepository: databaseRepository,
                            authRepository: authRepository,
                          )),
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
                  MaterialPageRoute(
                      builder: (context) => NaturePage(
                            databaseRepository: databaseRepository,
                            authRepository: authRepository,
                          )),
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
                  MaterialPageRoute(
                      builder: (context) => StoryPage(databaseRepository: databaseRepository,
                            authRepository: authRepository,
                          )),
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
                      builder: (context) => LogicalThinkingPage(databaseRepository: databaseRepository,
                            authRepository: authRepository,
                          )),
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
                      builder: (context) => UnderstandingPage(
                            databaseRepository: databaseRepository,
                            authRepository: authRepository,
                          )),
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
