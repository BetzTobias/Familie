import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/entertainment/all_songs_page.dart';
import 'package:flutter/material.dart';

class BiBaButzemannSongPage extends StatelessWidget {
  const BiBaButzemannSongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(35.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Es tanzt ein Bi-Ba-Butzemann',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      Image.asset(
                        'assets/Es tanzt ein Bi Ba Butzemann Noten.png', // Image Pfad
                        height: 200.0,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 15.0),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 3000),
                        transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                        child: GestureDetector(
                          onTap: () {
                            // Animations Bereich
                          },
                          child: const Text(
                            'Es tanz ein Bi-Ba- Butzemann in unserm Haus herum, dideldum. Es tanzt ein Bi- Ba- Butzemann in unserm Haus herum. Er wirft sein Säcklein her und hin. Was ist wohl in dem Säcklein drin? Es tanzt ein Bi- Ba- Butzemann in unsrem Haus herum.'
                            'Es tanz ein Bi-Ba- Butzemann in unserm Haus herum, dideldum.  Es tanzt ein Bi- Ba- Butzemann in unserm Haus herum. Er bringt zur Nacht dem guten Kind die Äpfel, die im Säcklein sind. Es tanzt ein Bi- Ba- Butzemann in unserm Haus herum.'
                            'Es tanz ein Bi-Ba- Butzemann in unserm Haus herum, dideldum. Es tanzt ein Bi- Ba- Butzemann in unserm Haus herum. Er wirft sein Säcklein hin und her, am Morgen ist es wieder leer. Es tanzt ein Bi- Ba- Butzemann in unserm Haus herum.',
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
