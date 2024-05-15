import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/entertainment/all_songs_page.dart';
import 'package:flutter/material.dart';

class AllMyLittleDucksSongPage extends StatelessWidget {
  const AllMyLittleDucksSongPage({super.key});

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
                        'Alle meine Entchen',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      Image.asset(
                        'assets/Alle meine Entchen Noten.png', // Image Pfad
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
                            'Alle meine Entchen, schwimmen auf dem See, schwimmen auf dem See, Köpfchen in das Wasser, Schwänzchen in die Höh.'
                            'Alle meine Täubchen, gurren auf dem Dach, gurren auf dem Dach, fliegt eins in die Lüfte, fliegen alle nach.'
                            'Alle meine Hühner, scharren in dem Stroh, scharren in dem Stroh, finden sie ein Körnchen, sind sie alle froh.'
                            'Alle meine Gänschen, watscheln durch den Grund, watscheln durch den Grund, suchen in dem Tümpel, werden kugelrund.',
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
