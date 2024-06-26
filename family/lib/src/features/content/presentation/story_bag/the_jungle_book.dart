import 'package:family/src/features/content/presentation/main_selection_page.dart';
import 'package:family/src/features/content/presentation/story_bag/all_storys_page.dart';
import 'package:flutter/material.dart';

class TheJungleBook extends StatefulWidget {
  const TheJungleBook({super.key});

  @override
  _TheJungleBookState createState() => _TheJungleBookState();
}

class _TheJungleBookState extends State<TheJungleBook> {
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
        title: const Text('Das Dschungelbuch'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Text(
                'Fröhlich wandern unsere beiden Freunde durch den Dschungel. Doch wird Mogli, als er erfahren hat, dass er zu den Menschen soll. traurig und zweifelt an Baghiras Freundschaft. Kaa, die listige Schlange, auf der Suche nach einem Zeitvertreib, versucht, sein Vertrauen zu erlangen.',
                style: TextStyle(fontSize: 14),
              ),
              const Text(
                'Aber Mogli ist Misstrauisch geworden. Er möchte zwar gern im Dschungel bleiben, aber nicht bei Kaa. Erst als er Colonel Hathi und seiner Frühpatrouille über den Weg läuft, scheint sich sein Schicksal zu entscheiden. Der aufgeblasene Colonel Hathi duldet kein Meschenkind im Dschungel. Genau so wie er seine Elephanten herumkommandiert, befiehlt er, Mogli unverzüglich zur Menschensiedlung zu schaffen. Baghira, der Panther, versucht wieder, dieser Aufgabe mit viel Takt und Mitgefühl gerecht zu werden, aber Mogli hat sich nun in den Kopf gesetzt, im Dschungel zu bleiben, koste es, was es wolle. Er will einfach nicht einsehen, dass er ein Menschenkind ist. So erklärt er trotzig, nicht mehr mit Baghira weiterzuziehen, sondern läuft alleine davon.',
                style: TextStyle(fontSize: 14),
              ),
              const Text(
                'Baghira, der die Verantwortung für Mogli übernommen hat, folgt ihm von fern und freut sich, als sich der Junge mit Balu, dem Bären, anfreundet. Balu, ein richtiger Nichtsnutz, Herumtreiber und liebenswerter Faulpelz, sorgt ausreichend dafür, dass Mogli wieder lachen kann. Nun beginnt eine herrliche, sorglose und wunderschöne Zeit. Balu und Mogli wollen immer zusammenbleiben, und Mogli lernt von seinem neuen freund, wie leicht und schön das Leben im Dschungel sein kann.',
                style: TextStyle(fontSize: 14),
              ),
              const Text(
                'Finde Balu und Mogli. Du hast 3 Versuche',
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
                          _checkAnswer(index, index == 3); // Anzahl versuche
                        }
                      },
                      child: Stack(
                        children: [
                          Card(
                            child: Image.asset(
                              'assets/dschungelbuch_bild${index + 1}.png',
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
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MainSelectionPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFFEBE216),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('Weiter'),
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
