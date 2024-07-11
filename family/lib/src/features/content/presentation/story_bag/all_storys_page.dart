import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/story_bag/little_red_riding_hood.dart';
import 'package:family/src/features/content/presentation/story_bag/story_bags.dart';
import 'package:family/src/features/content/presentation/story_bag/the_jungle_book.dart';
import 'package:flutter/material.dart';

class AllStorysPage extends StatelessWidget {
  const AllStorysPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  buildAllSongButton(context, 'Das Dschungelbuch', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TheJungleBook(),
                      ),
                    );
                  }),
                  const SizedBox(height: 10),
                  buildAllSongButton(context, 'Rotkäppchen', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LittleRedRidingHood(),
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            right: 20,
            child: SizedBox(
              height: 50,
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StoryPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFF16972A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Zurück',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildAllSongButton(BuildContext context, String category,
      [VoidCallback? onPressed]) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: const Color.fromARGB(255, 239, 138, 138),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Colors.black),
        ),
      ),
      child: Text(
        category,
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
