import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/entertainment/entertainment.dart';
import 'package:family/src/features/content/presentation/entertainment/songs/all_my_little_ducks_song_page.dart';
import 'package:family/src/features/content/presentation/entertainment/songs/bi_ba_butzemann_dancing_song_page.dart';
import 'package:family/src/features/content/presentation/entertainment/songs/blue_mountains_song_page.dart';
import 'package:family/src/features/content/presentation/entertainment/songs/hoppe_hoppe_reiter_song_page.dart';
import 'package:family/src/features/content/presentation/entertainment/songs/sleep_kid_sleep_song_page.dart';
import 'package:flutter/material.dart';

class AllSongsPage extends StatelessWidget {
  const AllSongsPage({super.key});

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
                  buildAllSongButton(context, 'Alle meine Entchen', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AllMyLittleDucksSongPage(),
                      ),
                    );
                  }),
                  const SizedBox(height: 10),
                  buildAllSongButton(context, 'Schlaf Kindlein, schlaf', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SleepKidSleepSongPage(),
                      ),
                    );
                  }),
                  const SizedBox(height: 10),
                  buildAllSongButton(context, 'Es tanzt ein Bi-Ba-Butzemann',
                      () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BiBaButzemannSongPage(),
                      ),
                    );
                  }),
                  const SizedBox(height: 10),
                  buildAllSongButton(context, 'Hoppe, hoppe Reiter', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HoppeHoppeReiterSongPage(),
                      ),
                    );
                  }),
                  const SizedBox(height: 10),
                  buildAllSongButton(
                      context, 'Von den blauen Bergen kommen wir', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BlueMountainsSongPage(),
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
                      builder: (context) => const EntertainmentPage(),
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
