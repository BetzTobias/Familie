import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/entertainment/all_songs_page.dart';
import 'package:flutter/material.dart';

class SleepKidSleepSongPage extends StatelessWidget {
  const SleepKidSleepSongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(60.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Schlaf Kindlein Schlaf',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      Image.asset(
                        'assets/Schlaf Kindlein schlaf Noten.png', // Image Pfad
                        height: 200.0,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 15.0),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 30),
                        transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                        child: GestureDetector(
                          onTap: () {
                            // Animations Bereich
                          },
                          child: const Text(
                            'Schlaf, Kindlein, schlaf. Der Vater hüt die Schaf, die Mutter schüttelt’s Bäumelein, da fällt herab ein Träumelein. Schlaf, Kindlein, schlaf.'
                            'Schlaf, Kindlein, schlaf. Am Himmel zieh’n die Schaf, die Sternlein sind die Lämmerlein, der Mond, der ist das Schäferlein. Schlaf, Kindlein, schlaf.'
                            'Schlaf, Kindlein, schlaf. So schenk ich dir ein Schaf mit einer gold’nen Schelle fein, das soll dein Spielgeselle sein. Schlaf, Kindlein, schlaf.',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 760,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AllSongsPage(),
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
        ],
      ),
    );
  }
}
