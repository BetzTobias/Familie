import 'package:family/src/features/content/presentation/story_bag/all_storys_page.dart';
import 'package:flutter/material.dart';

class LittleRedRidingHood extends StatefulWidget {
  const LittleRedRidingHood({super.key});

  @override
  _LittleRedRidingHoodState createState() => _LittleRedRidingHoodState();
}

class _LittleRedRidingHoodState extends State<LittleRedRidingHood> {
  bool _isCorrect = false;
  String _feedback = '';
  int _attempts = 0;
  final int _maxAttempts = 3; // Verfügbare Versuche
  final List<int> _clickedImages = [
    -1,
    -1,
    -1,
    -1
  ]; // Liste für den Status der Bilder

  void _checkAnswer(int index, bool isCorrect) {
    setState(() {
      _attempts++;
      _clickedImages[index] = isCorrect ? 1 : 0;
      if (isCorrect) {
        _isCorrect = true;
        _feedback = 'Richtig!';
      } else if (_attempts >= _maxAttempts) {
        _isCorrect = false;
        _feedback = 'Falsch! Keine Versuche mehr übrig.';
      } else {
        _isCorrect = false;
        _feedback = 'Falsch! Versuchen es erneut.';
      }
    });
  }

  Widget _buildImageOverlay(int index) {
    if (_clickedImages[index] == -1) return const SizedBox.shrink();
    if (_clickedImages[index] == 1) {
      return Positioned.fill(
        child: Container(
          color: Colors.green.withOpacity(0.5),
          child: const Icon(Icons.check, color: Colors.white, size: 100),
        ),
      );
    } else {
      return Positioned.fill(
        child: Container(
          color: Colors.red.withOpacity(0.5),
          child: const Icon(Icons.close, color: Colors.white, size: 100),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Das Rotkäppchen'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Text(
                'Es war einmal ein kleines, süßes Mädchen. Jeder liebte sie. Am meisten ihre Großmutter. Eines Tages gab sie ihr eine rote Mütze aus Samt. Das Mädchen trug diese Mütze seitdem immer und wurde daher Rotkäppchen genannt.',
                style: TextStyle(fontSize: 14),
              ),
              const Text(
                'Eines Tages war ihre Großmutter krank. Also machte sich Rotkäppchen auf den Weg, um ihr Wein und Kekse zu bringen. Das würde sicherlich zu ihrem Wohlbefinden beitragen. Ihre Mutter sagte ihr, dass sie nicht den Weg verlassen und vorsichtig sein soll. Sie sollte außerdem höflich sein und sich von ihrer Großmutter verabschieden.',
                style: TextStyle(fontSize: 14),
              ),
              const Text(
                'Finde Rotkäppchen auf einem Weg. Du hast 3 Versuche',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 280, // Setzen Sie die Höhe, um den GridView anzuzeigen
                child: GridView.count(
                  crossAxisCount: 2,
                  children: List.generate(4, (index) {
                    return GestureDetector(
                      onTap: () {
                        if (_attempts < _maxAttempts && !_isCorrect) {
                          _checkAnswer(index,
                              index == 2); // Position des Richtigen Bilds
                        }
                      },
                      child: Stack(
                        children: [
                          Card(
                            child: Image.asset(
                              'assets/rotkäppchen_bild${index + 1}.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          _buildImageOverlay(index),
                        ],
                      ),
                    );
                  }),
                ),
              ),
              if (_feedback.isNotEmpty) ...[
                const SizedBox(height: 8),
                Text(
                  _feedback,
                  style: TextStyle(
                    fontSize: 18,
                    color: _isCorrect ? Colors.green : Colors.red,
                  ),
                ),
              ],
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AllStorysPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFF16972A),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('Zurück'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
