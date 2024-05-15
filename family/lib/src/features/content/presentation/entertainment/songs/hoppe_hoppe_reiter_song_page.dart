import 'package:family/src/features/content/presentation/background_page.dart';
import 'package:family/src/features/content/presentation/entertainment/all_songs_page.dart';
import 'package:flutter/material.dart';

class HoppeHoppeReiterSongPage extends StatefulWidget {
  const HoppeHoppeReiterSongPage({
    super.key,
  });

  @override
  _HoppeHoppeReiterSongPageState createState() =>
      _HoppeHoppeReiterSongPageState();
}

class _HoppeHoppeReiterSongPageState extends State<HoppeHoppeReiterSongPage> {
  bool _isAnimated = false;

  @override
  Widget build(BuildContext context) {
    return BackgroundPage(
      child: Stack(
        children: [
          SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(60.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Hoppe, Hoppe Reiter',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      Image.asset(
                        'assets/Hoppe hoppe Reiter Noten.png', // Image Pfad
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
                            setState(() {
                              _isAnimated = !_isAnimated;
                            });
                          },
                          child: const Text(
                            'Hoppe, hoppe, Reiter, wenn er fällt, dann schreit er.'
                            'Fällt er in den Graben, fressen ihn die Raben.'
                            'Fällt er in den Sumpf, macht der Reiter plumps.'
                            'Hoppe, hoppe Reiter, wenn er fällt. dann schreit er.'
                            'Fällt er in den Teich, findet ihn keiner gleich.'
                            'Fällt er in den Sumpf, macht der Reiter plumps',
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
