import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:flutter/material.dart';

class SleepKidSleepSongPage extends StatelessWidget {
  const SleepKidSleepSongPage({super.key});
  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Schlaf Kindlein, schlaf',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Image.asset(
                    'assets/Schlaf Kindlein schlaf Noten.png', // Image Pfad
                    height: 200.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 16.0),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Mehr Abschnittiger Text',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  // Bereich für den Animierten Text
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
